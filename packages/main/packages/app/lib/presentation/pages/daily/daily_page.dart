import 'package:app/domain.dart';
import 'package:app/presentation.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
final class DailyPage extends WidgetWithLogic<DailyLogic> {
  const DailyPage({super.key});

  @override
  logicBuilder(context) => DailyLogic(context);

  @override
  Widget build(context, logic) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: logic.datesDataNotifier.when(
        success: (dates) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0x33000000),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      context.appLocalizations.collectionTitle,
                      style: const TextStyle(
                        fontFamily: 'Cygre',
                        color: Color(0xFF000000),
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        height: 51.74 / 32,
                      ),
                    ),
                    const Spacer(),
                    logic.selectedDateNotifier.builder(
                      (context, selectedDate, _) => _DateSwitcher(
                        availableDates: dates,
                        selectedDate: selectedDate!,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SmoothListView(
                  children: [
                    logic.linksDataNotifier.when(
                      success: (links) {
                        return CollectionViewer(
                          links
                              .map(
                                (row) => row
                                    .map((e) => DailyLinkModel.fromResponse(e))
                                    .toList(),
                              )
                              .toList(),
                          onPressed: (link) => launchUrl(link.url),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

final class _DateSwitcher extends StatefulWidget {
  const _DateSwitcher({
    required this.availableDates,
    required this.selectedDate,
  });

  final List<Date> availableDates;
  final Date selectedDate;

  @override
  State<_DateSwitcher> createState() => _DateSwitcherState();
}

final class _DateSwitcherState extends State<_DateSwitcher> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final linesInTextPainter = TextPainter(
      text: TextSpan(
        text: widget.selectedDate.dateTime
            .format(context, 'dd MMM, EEE')
            .replaceAll('.', ''),
        style: const TextStyle(
          fontFamily: 'Cygre',
          color: Color(0xFF000000),
          fontSize: 24,
          fontWeight: FontWeight.w500,
          height: 38.81 / 24,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    const duration = Duration(milliseconds: 300);
    const curve = Curves.linearToEaseOut;
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Row(
        children: [
          AnimatedContainer(
            duration: duration,
            curve: curve,
            width: isHovered
                ? linesInTextPainter.width - 20
                : linesInTextPainter.width + 10,
            height: linesInTextPainter.height,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                widget.selectedDate.dateTime
                    .format(context, 'dd MMM, EEE')
                    .replaceAll('.', ''),
                style: const TextStyle(
                  fontFamily: 'Cygre',
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  height: 38.81 / 24,
                ),
              ),
            ),
          ),
          AnimatedContainer(
            duration: duration,
            curve: curve,
            width: isHovered ? 13 : 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Row(
              children: [
                DisablingDecorator(
                  isDisabled: widget.selectedDate == widget.availableDates.last,
                  child: Clickable(
                    onTap: context.read<DailyLogic>().selectPreviousDate,
                    child: AnimatedContainer(
                      duration: duration,
                      curve: curve,
                      width: isHovered ? 16 : 9,
                      height: isHovered ? 20 : 18,
                      child: SvgPicture.string(
                        '<svg width="11" height="18" viewBox="0 0 11 18" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M10 17L2 9L10 1" stroke="black" stroke-width="2"/> </svg>',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: duration,
                  curve: curve,
                  width: isHovered ? 20 : 5,
                ),
                DisablingDecorator(
                  isDisabled:
                      widget.selectedDate == widget.availableDates.first,
                  child: Clickable(
                    onTap: context.read<DailyLogic>().selectNextDate,
                    child: AnimatedContainer(
                      duration: duration,
                      curve: curve,
                      width: isHovered ? 16 : 9,
                      height: isHovered ? 20 : 18,
                      child: SvgPicture.string(
                        '<svg width="11" height="18" viewBox="0 0 11 18" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M1 1L9 9L0.999999 17" stroke="black" stroke-width="2"/> </svg>',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

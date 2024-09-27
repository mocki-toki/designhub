import 'package:app/domain.dart';
import 'package:app/presentation.dart';

@RoutePage()
final class StudiosPage extends WidgetWithLogic<StudiosLogic> {
  const StudiosPage({super.key});

  @override
  logicBuilder(context) => StudiosLogic(context);

  @override
  Widget build(context, logic) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: logic.studiosNotifier.when(
        success: (studios) {
          return _StudioListViewer(
            studios,
            onStudioPressed: logic.openStudio,
          );
        },
      ),
    );
  }
}

final class _StudioListViewer extends StatefulWidget {
  const _StudioListViewer(
    this.data, {
    this.onStudioPressed,
  });

  final List<BrandingStudio> data;
  final ValueChanged<BrandingStudio>? onStudioPressed;

  @override
  State<_StudioListViewer> createState() => _StudioListViewerState();
}

final class _StudioListViewerState extends State<_StudioListViewer> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.data.length,
      itemBuilder: (context, index) => _StudioWidget(
        widget.data[index],
        onPressed: () => widget.onStudioPressed?.call(widget.data[index]),
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: 1,
        child: ColoredBox(
          color: Color(0xFFC9C9C9),
        ),
      ),
    );
  }
}

final class _StudioWidget extends StatefulWidget {
  const _StudioWidget(
    this.data, {
    required this.onPressed,
  });

  final BrandingStudio data;
  final VoidCallback? onPressed;

  @override
  State<_StudioWidget> createState() => _StudioWidgetState();
}

final class _StudioWidgetState extends State<_StudioWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Clickable(
        onTap: widget.onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 80,
                top: 10,
                bottom: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AnimatedNetworkImage(
                        widget.data.logoUrl,
                        width: 32,
                        height: 32,
                      ),
                      const SizedBox(width: 13),
                      Text(
                        widget.data.name,
                        style: const TextStyle(
                          fontFamily: 'Cygre Medium',
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          height: 51.74 / 32,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    context.appLocalizations
                        .projectsCounter('${widget.data.projectsCounter}'),
                    style: const TextStyle(
                      fontFamily: 'Cygre Medium',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      height: 29.11 / 18,
                      color: Color(0xFF646464),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemCount: widget.data.previews.length,
                itemBuilder: (context, index) => Hero(
                  tag: widget.data.previews[index].id,
                  child: AnimatedNetworkImage(
                    widget.data.previews[index].imageUrl,
                    height: 180,
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(width: 12),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
          ],
        ),
      ),
    );
  }
}

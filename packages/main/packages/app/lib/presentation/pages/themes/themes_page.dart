import 'package:app/domain.dart';
import 'package:app/presentation.dart';

@RoutePage()
final class ThemesPage extends WidgetWithLogic<ThemesLogic> {
  const ThemesPage({super.key});

  @override
  logicBuilder(context) => ThemesLogic(context);

  @override
  Widget build(context, logic) {
    return Scaffold(
      // TODO интегрировать тему с палитрой, шрифтами и тд
      backgroundColor: const Color(0xFFFBFBFB),
      body: logic.themesNotifier.when(
        success: (themes) {
          return _ThemeListViewer(
            themes,
            onThemePressed: logic.openTheme,
          );
        },
      ),
    );
  }
}

final class _ThemeListViewer extends StatefulWidget {
  const _ThemeListViewer(
    this.data, {
    this.onThemePressed,
  });

  final List<BrandingTheme> data;
  final ValueChanged<BrandingTheme>? onThemePressed;

  @override
  State<_ThemeListViewer> createState() => _ThemeListViewerState();
}

final class _ThemeListViewerState extends State<_ThemeListViewer> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.data.length,
      itemBuilder: (context, index) => _ThemeWidget(
        widget.data[index],
        onPressed: () => widget.onThemePressed?.call(widget.data[index]),
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

final class _ThemeWidget extends StatefulWidget {
  const _ThemeWidget(
    this.data, {
    required this.onPressed,
  });

  final BrandingTheme data;
  final VoidCallback? onPressed;

  @override
  State<_ThemeWidget> createState() => _ThemeWidgetState();
}

final class _ThemeWidgetState extends State<_ThemeWidget> {
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
                  Text(
                    widget.data.name,
                    style: const TextStyle(
                      fontFamily: 'Cygre Medium',
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      height: 51.74 / 32,
                    ),
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

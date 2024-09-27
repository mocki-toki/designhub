import 'dart:async';

import 'package:shared_app/domain.dart';
import 'package:shared_app/presentation.dart';

final class ProjectListViewer extends StatefulWidget {
  const ProjectListViewer(
    this.data, {
    this.onProjectPressed,
    required this.onEndReached,
    required this.isHasMore,
  });

  final List<BrandingProject> data;
  final ValueChanged<BrandingProject>? onProjectPressed;
  final VoidCallback onEndReached;
  final bool isHasMore;

  @override
  State<ProjectListViewer> createState() => _ProjectListViewerState();
}

final class _ProjectListViewerState extends State<ProjectListViewer> {
  late ScrollController _scrollController = ScrollController()
    ..addListener(_onScroll);
  Timer? _timer;
  bool _antispamEnabled = false;

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _antispam() {
    _antispamEnabled = true;
    _timer = Timer(const Duration(milliseconds: 200), () {
      _antispamEnabled = false;
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 500 &&
        widget.isHasMore &&
        !_antispamEnabled) {
      _antispam();
      widget.onEndReached();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      itemCount: widget.isHasMore ? widget.data.length + 1 : widget.data.length,
      itemBuilder: (context, index) {
        if (index == widget.data.length) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return _ProjectWidget(
          widget.data[index],
          onPressed: () => widget.onProjectPressed?.call(widget.data[index]),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(
        height: 1,
        child: ColoredBox(
          color: Color(0xFFC9C9C9),
        ),
      ),
    );
  }
}

final class _ProjectWidget extends StatefulWidget {
  const _ProjectWidget(
    this.data, {
    required this.onPressed,
  });

  final BrandingProject data;
  final VoidCallback? onPressed;

  @override
  State<_ProjectWidget> createState() => _ProjectWidgetState();
}

final class _ProjectWidgetState extends State<_ProjectWidget> {
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
                    widget.data.studio.name,
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
                itemCount: widget.data.children.length,
                itemBuilder: (context, index) => Hero(
                  tag: widget.data.children[index].id,
                  child: AnimatedNetworkImage(
                    widget.data.children[index].imageUrl,
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

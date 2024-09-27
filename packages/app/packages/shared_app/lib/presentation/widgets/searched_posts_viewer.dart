import 'dart:async';

import 'package:shared_app/domain.dart';
import 'package:shared_app/presentation.dart';

final class SearchedPostsViewer extends StatefulWidget {
  const SearchedPostsViewer(
    this.data, {
    this.onPostPressed,
    required this.onEndReached,
    required this.isHasMore,
  });

  final List<BrandingPost> data;
  final ValueChanged<BrandingPost>? onPostPressed;
  final VoidCallback onEndReached;
  final bool isHasMore;

  @override
  State<SearchedPostsViewer> createState() => _SearchedPostsViewerState();
}

final class _SearchedPostsViewerState extends State<SearchedPostsViewer> {
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
    return MasonryGridView.count(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 20,
      ),
      crossAxisCount: 3,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      controller: _scrollController,
      itemCount: widget.data.length,
      itemBuilder: (context, index) {
        return _PostWidget(
          widget.data[index],
          onPressed: () => widget.onPostPressed?.call(widget.data[index]),
        );
      },
    );
  }
}

final class _PostWidget extends StatefulWidget {
  const _PostWidget(
    this.data, {
    required this.onPressed,
  });

  final BrandingPost data;
  final VoidCallback? onPressed;

  @override
  State<_PostWidget> createState() => _PostWidgetState();
}

final class _PostWidgetState extends State<_PostWidget> {
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
          children: [
            AnimatedNetworkImage(
              widget.data.imageUrl,
              fit: BoxFit.cover,
            ),
            Text(
              '${widget.data.name} — ${widget.data.parent!.name}',
              style: const TextStyle(
                fontFamily: 'Cygre Medium',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 32.34 / 20,
              ),
            ),
            Text(
              widget.data.studio.name,
              style: const TextStyle(
                fontFamily: 'Cygre Medium',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 19.2 / 16,
                color: Color(0xFF646464),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:shared_app/presentation.dart';

enum AnimatedImageDirection {
  horizontal,
  vertical,
}

final class AnimatedNetworkImage extends StatefulWidget {
  const AnimatedNetworkImage(
    this.imageUrl, {
    Key? key,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  final Uri? imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  State<AnimatedNetworkImage> createState() => _AnimatedNetworkImageState();
}

final class _AnimatedNetworkImageState extends State<AnimatedNetworkImage> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _startFadeIn();
  }

  void _startFadeIn() async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (mounted) {
      setState(() {
        _isVisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 100),
      child: AnimatedSize(
        curve: Curves.linearToEaseOut,
        duration: const Duration(milliseconds: 300),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: widget.width ?? 200,
            minHeight: widget.height ?? 200,
          ),
          child: CachedNetworkImage(
            fadeOutDuration: const Duration(milliseconds: 100),
            fadeInDuration: const Duration(milliseconds: 100),
            imageUrl: '${widget.imageUrl}',
            width: widget.width,
            height: widget.height,
            fit: widget.fit,
            errorWidget: (_, __, ___) {
              return Container(
                width: widget.width ?? 200,
                height: widget.height ?? 200,
                color: const Color(0xFFE0E0E0),
                child: const Icon(
                  Icons.image_not_supported,
                  color: Colors.grey,
                ),
              );
            },
            placeholder: (context, url) {
              return Container(
                width: widget.width ?? 200,
                height: widget.height ?? 200,
                color: const Color(0xFFE0E0E0),
              );
            },
          ),
        ),
      ),
    );
  }
}

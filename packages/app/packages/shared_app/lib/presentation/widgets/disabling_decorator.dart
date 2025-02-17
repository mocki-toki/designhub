import 'package:shared_app/presentation.dart';

final class DisablingDecorator extends StatelessWidget {
  const DisablingDecorator({
    super.key,
    required this.isDisabled,
    required this.child,
  });
  final bool isDisabled;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      curve: Curves.fastOutSlowIn,
      opacity: isDisabled ? 0.5 : 1,
      child: IgnorePointer(
        ignoring: isDisabled,
        child: child,
      ),
    );
  }
}

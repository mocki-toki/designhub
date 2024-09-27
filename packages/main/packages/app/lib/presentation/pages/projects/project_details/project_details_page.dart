import 'package:app/domain.dart';
import 'package:app/presentation.dart';

@RoutePage()
final class ProjectDetailsPage extends WidgetWithLogic<ProjectDetailsLogic> {
  const ProjectDetailsPage(
    @PathParam('id') this.id, {
    super.key,
    this.cachedData,
  });

  final String id;
  final BrandingProject? cachedData;

  @override
  logicBuilder(context) =>
      ProjectDetailsLogic(context, UuidValue.fromString(id), cachedData);

  @override
  Widget build(context, logic) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ).copyWith(bottom: 0),
              child: Clickable(
                onTap: () => Navigator.of(context).pop(),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(
                          fontFamily: 'Cygre',
                          color: Color(0xFF000000),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          const WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 14, top: 3),
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                size: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                            alignment: PlaceholderAlignment.middle,
                          ),
                          TextSpan(
                            text: context.appLocalizations.projectsTitle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: logic.projectNotifier.when(
                success: (project) {
                  return Column(
                    children: [
                      _Header(project),
                      Expanded(
                        child: logic.postListNotifier.builder(
                            builder: (context, state, _) {
                          final children = () {
                            if (state is DataStateSuccess) {
                              return state.asSuccess!.data;
                            } else if (state is DataStateLoadingMore) {
                              return state.asLoadingMore!.data;
                            } else {
                              return project.children;
                            }
                          }();
                          return MasonryGridView.count(
                            controller: logic.scrollController,
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 60,
                              top: 70,
                              bottom: 60,
                            ),
                            itemCount: children.length,
                            crossAxisCount: 3,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            itemBuilder: (context, index) {
                              return AnimatedNetworkImage(
                                children[index].imageUrl,
                              );
                            },
                          );
                        }),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final class _Header extends StatefulWidget {
  const _Header(this.project);

  final BrandingProject project;

  @override
  State<_Header> createState() => _HeaderState();
}

final class _HeaderState extends State<_Header>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController =
      AnimationController(vsync: this, value: 1);
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    context
        .read<ProjectDetailsLogic>()
        .scrollController
        .addListener(scrollListener);

    _opacityAnimation = CurvedAnimation(
      parent: animationController,
      curve: const Interval(0.8, 1, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    context
        .read<ProjectDetailsLogic>()
        .scrollController
        .removeListener(scrollListener);
    animationController.dispose();
    super.dispose();
  }

  void scrollListener() {
    final animationValue = context
        .read<ProjectDetailsLogic>()
        .scrollController
        .offset
        .clamp(0.0, 200.0)
        .toDouble();

    animationController.value = 1 - (animationValue / 200);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            final child = Container(
              padding: const EdgeInsets.only(left: 20, top: 8, bottom: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: animationController.value > 0.3
                        ? const Color(0x00000000)
                        : const Color(0x33000000),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.project.name,
                    style: TextStyle(
                      fontFamily: 'Cygre',
                      color: const Color(0xFF000000),
                      fontSize: 48 * (animationController.value / 2 + 0.4),
                      fontWeight: FontWeight.w500,
                      height: 77.62 / 48,
                    ),
                  ),
                  if (animationController.value > 0.8)
                    FadeTransition(
                      opacity: _opacityAnimation,
                      child: Text(
                        widget.project.description,
                        style: const TextStyle(
                          fontFamily: 'Cygre',
                          color: Color(0xFF7E7E7E),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 77.62 / 48,
                        ),
                      ),
                    ),
                ],
              ),
            );

            if (animationController.value > 0.3) {
              return child;
            } else {
              return Expanded(
                child: child,
              );
            }
          },
        ),
        AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            if (animationController.value > 0.3) {
              return const Spacer();
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
        AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              if (animationController.value < 0.3) {
                return const SizedBox.shrink();
              } else {
                return SizeTransition(
                  sizeFactor: animationController,
                  axis: Axis.vertical,
                  axisAlignment: 1,
                  child: FadeTransition(
                    opacity: _opacityAnimation,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 38, right: 60),
                      child: SizedBox(
                        width: 516,
                        child: Column(
                          children: [
                            for (int i = 0; i < 2; i++)
                              Row(
                                children: [
                                  SizedBox(
                                    width: 178,
                                    height: 29,
                                    child: Text(
                                      i == 0
                                          ? context.appLocalizations.studio
                                          : context.appLocalizations.theme,
                                      style: const TextStyle(
                                        fontFamily: 'Cygre',
                                        color: Color(0xFF7E7E7E),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        height: 29.11 / 18,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    i == 0
                                        ? widget.project.studio.value
                                        : widget.project.theme.value,
                                    style: const TextStyle(
                                      fontFamily: 'Cygre',
                                      color: Color(0xFF000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      height: 29.11 / 18,
                                    ),
                                  ),
                                ],
                              ),
                            Container(
                              height: 1,
                              color: const Color(0xFFC9C9C9),
                            ),
                            for (int i = 0; i < 2; i++)
                              Row(
                                children: [
                                  SizedBox(
                                    width: 178,
                                    height: 29,
                                    child: Text(
                                      i == 0
                                          ? context.appLocalizations.pallete
                                          : context.appLocalizations.fonts,
                                      style: const TextStyle(
                                        fontFamily: 'Cygre',
                                        color: Color(0xFF7E7E7E),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        height: 19.2 / 16,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 29,
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          for (final category in i == 0
                                              ? widget.project.palette
                                              : widget.project.fonts) ...[
                                            if (category is ColorCategory) ...[
                                              WidgetSpan(
                                                alignment: PlaceholderAlignment
                                                    .baseline,
                                                baseline:
                                                    TextBaseline.ideographic,
                                                child: Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF000000 +
                                                        category.hexColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                  ),
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' ${category.name}   ',
                                              ),
                                            ],
                                            if (category is FontCategory) ...[
                                              TextSpan(
                                                text: '${category.name}' +
                                                    (widget.project.fonts
                                                                .last ==
                                                            category
                                                        ? ''
                                                        : ', '),
                                              ),
                                            ],
                                          ],
                                        ],
                                      ),
                                      style: const TextStyle(
                                        fontFamily: 'Cygre',
                                        color: Color(0xFF000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        height: 19.2 / 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ].separated(const SizedBox(height: 8)),
                        ),
                      ),
                    ),
                  ),
                );
              }
            }),
      ],
    );
  }
}

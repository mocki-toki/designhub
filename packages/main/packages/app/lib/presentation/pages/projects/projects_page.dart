import 'package:app/presentation.dart';

@RoutePage()
final class ProjectsPage extends WidgetWithLogic<ProjectsLogic> {
  const ProjectsPage({super.key});

  @override
  logicBuilder(context) => ProjectsLogic(context);

  @override
  Widget build(context, logic) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: logic.projectsNotifier.when(
        success: (projects) {
          return ProjectListViewer(
            projects,
            onProjectPressed: logic.openProject,
            onEndReached: logic.loadMore,
            isHasMore: projects.nextCursor != null,
          );
        },
      ),
    );
  }
}

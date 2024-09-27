import 'dart:async';
import 'dart:io';
import 'package:backend/domain.dart';
import 'package:backend/infrastructure.dart';
import 'package:shared_prisma_backend/client.dart';

final _prismaSharedClient = PrismaSharedClient();
@protected
PrismaSharedClient get prismaSharedClient => _prismaSharedClient;

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  final server = await serve(handler, ip, port);

  await _prismaSharedClient.$connect();

  print('Server started on ${server.address.address}:${server.port}');

  ProcessSignal.sigint.watch().listen((_) => _shutdown(server));
  ProcessSignal.sigterm.watch().listen((_) => _shutdown(server));

  return server;
}

Future<void> _shutdown(HttpServer server) async {
  print('Stopping server...');
  await server.close(force: true);

  await _prismaSharedClient.$disconnect();

  print('Server stopped');
  exit(0);
}

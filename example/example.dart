import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:marathon_cookies/marathon_cookies.dart';

void main() {
  /// Request contains cookie header.
  /// e.g. 'cookie': 'ping=foo'
  var handler =
      const Pipeline().addMiddleware(cookieParser()).addHandler((req) async {
    CookieParser cookies = req.context['cookies'] as CookieParser;
    if (cookies.get('ping') != null) {
      // Clear cookies because Shelf currently only supports
      // a single `Set-Cookie` header in response.
      cookies.clear();
      cookies.set('pong', 'bar', secure: true);
    }

    // Response will set cookie header.
    // e.g. 'set-cookie': 'pong=bar; Secure; HttpOnly'
    return Response.ok('check your cookies');
  });

  serve(handler, 'localhost', 8080).then((server) {
    print('Serving at http://${server.address.host}:${server.port}');
  });
}

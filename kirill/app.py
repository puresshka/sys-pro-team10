#!/usr/bin/env python3
import http.server
import socketserver

# Читаем index.html
with open("index.html", "r", encoding="utf-8") as f:
    content = f.read()

# Создаём обработчик
class Handler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html; charset=utf-8")
        self.end_headers()
        self.wfile.write(content.encode('utf-8'))

if __name__ == "__main__":
    with socketserver.TCPServer(("", 8000), Handler) as httpd:
        print("Сервер запущен на порту 8000")
        httpd.serve_forever()

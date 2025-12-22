const http = require('http');
const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('<h1>Привет! Это Вася — часть 3 (Node.js)</h1>');
});
server.listen(3000, '0.0.0.0', () => {
  console.log('Сервер запущен на порту 3000');
});

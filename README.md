# Системное ПО — Тема 10

**Команда:** Кирилл, Ваня, Вася  
**Тема:** Развёртывание веб-сервера Docker (k8s) (minikube) Nginx + несколько сервисов

## 🧩 Архитектура
- `/kirill` → Flask (Python)
- `/vanya`  → Статический HTML
- `/vasya`  → Node.js API
- Единая точка входа — **Nginx Ingress**

## ▶️ Как запустить
1. `minikube start --driver=docker`
2. `minikube addons enable ingress`
3. `eval $(minikube docker-env)`
4. `docker build -t kirill-app ./kirill` (и аналогично для vanya, vasya)
5. `kubectl apply -f kirill/deployment.yaml` (и для остальных)
6. `kubectl apply -f ingress.yaml`

## ✅ Работоспособность
Проверена через `kubectl exec`:
- `kubectl exec -it kirill-deployment-xxxxx -- curl http://localhost:8000/kirill`
- `kubectl exec -it vanya-deployment-xxxxx -- curl http://localhost`
- `kubectl exec -it vasya-deployment-xxxxx -- curl http://localhost:3000/vasya`

Результат: все три команды возвращают корректный HTML.

Скриншоты и видео: [приложены отдельно]

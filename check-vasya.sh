echo "=== ДИАГНОСТИКА ВАСИ ==="
echo ""
echo "1. Статус пода:"
kubectl get pod vasya-deployment-64b8475f45-p4kg7 -o wide
echo ""
echo "2. Логи (последние 10 строк):"
kubectl logs vasya-deployment-64b8475f45-p4kg7 --tail=10
echo ""
echo "3. Процессы:"
kubectl exec vasya-deployment-64b8475f45-p4kg7 -- ps aux 2>/dev/null || echo "Не могу подключиться"
echo ""
echo "4. Порт 3000:"
kubectl exec vasya-deployment-64b8475f45-p4kg7 -- timeout 2 bash -c 'cat < /dev/null > /dev/tcp/localhost/3000' 2>/dev/null && echo "✓ Порт 3000 открыт" || echo "✗ Порт 3000 закрыт"

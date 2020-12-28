apiVersion: v1
kind: Service
metadata:
  name: thanos-ruler
  namespace: default
  labels:
    app: thanos-ruler
spec:
  selector:
    app: thanos-ruler
  ports:
  - name: grpc
    port: 10901
    targetPort: grpc
  - name: http
    port: 10902
    targetPort: web

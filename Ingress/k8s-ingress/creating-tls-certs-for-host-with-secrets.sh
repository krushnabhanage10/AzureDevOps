openssl req -x509 -newkey rsa:4096 -nodes -keyout tlspath.key -out tlspath.crt -subj "/CN=portal.krushna.com" -days 365
kubectl create secret tls portal-krushna-com-tls --cert tlspath.crt --key tlspath.key
openssl req -x509 -newkey rsa:4096 -nodes -keyout tlshostj.key -out tlshostj.crt -subj "/CN=javaapp.portal.krushna.com" -days 365
kubectl create secret tls javaapp-portal-krushna-com-tls --cert tlshostj.crt --key tlshostj.key
openssl req -x509 -newkey rsa:4096 -nodes -keyout tlshostd.key -out tlshostd.crt -subj "/CN=dotnetapp.portal.krushna.com" -days 365
kubectl create secret tls dotnetapp-portal-krushna-com-tls --cert tlshostd.crt --key tlshostd.key
openssl req -x509 -newkey rsa:4096 -nodes -keyout tlshostp.key -out tlshostp.crt -subj "/CN=pythonapp.portal.krushna.com" -days 365
kubectl create secret tls pythonapp-portal-krushna-com-tls --cert tlshostp.crt --key tlshostp.key

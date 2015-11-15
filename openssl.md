# openSSL

## 서버키를 발급한다. rsa방식 2048
`openssl genrsa -out server.key 2048`

## 인증서 정보 입력 생성. 국가코드는 KR이다.
`openssl req -new -key server.key -out server.csr`

## 인증서 생성 종료일을 1년으로 설정한다.
`openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt`

## 참고할것
* golang : http://golang.org/pkg/crypto/tls/#Dial

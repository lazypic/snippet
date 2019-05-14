# ssh

## 원격으로 명령어 보내기
ssh user@hostname "ls -al"

## 현재 경로의 파일을 서버 홈디렉토리로 보내기
scp ./test.txt user@hostname:~

## set port, test폴더 보내기
scp -P 2048 -r ./test user@hostname:~

## sshpass
```
yum install sshpass
brew install sshpass (작동하지 않는다. 보안을 파괴하기 때문임.)
```
```
사용법
접속 : sshpass -pidea ssh -o StrictHostKeyChecking=no id@0.0.0.0
명령어 실행 : sshpass -pidea ssh -o StrictHostKeyChecking=no id@0.0.0.0 hostname
```

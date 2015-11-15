# check_binary and build.

바이너리 파일로 비트와 OS를 알아내는 방법

##간단한 방법.
```
file fiename
```

##Linux
```
readelf -a -W binaryfile
```

##OSX
* install binutils
```
brew install binutils
```
* how to use
```
gobjdump -p binaryfile
```

##golang에서 빌드하기.
* 미리 OS별 bit별로 publish 할 경로를 만들고 빌드를 해주자.
* 빌드가 끝나면 관련 파일로 압축을 한다. exe파일은 바로 실행되는 형태라서 OS에서 막기도 한다.
```
go build -o /publihs_path/publish_filename
```

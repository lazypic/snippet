
google app engine setting

#### 설치하기
* 다운로드 한다.
 ```
 curl https://sdk.cloud.google.com | bash
 ```
 
* 쉘을 재시작 한다.
* 로그인을 한다.
```
gcloud auth login
```

* google app engine을 업데이트 한다.
```
gcloud components update gae-go
```

* code를 작성하고 올린다.
```
goapp deploy -oauth -application cohesive-bonbon-691 appengine-try-go(foldername)
```

#### 폴더는 다음과 같이 구성되어있다.

* app.yaml

```
application: helloworld
version: 1
runtime: go
api_version: go1

handlers:
- url: /.*
  script: _go_app
  ```

* hello/hello.go

```
package hello

import (
    "fmt"
    "net/http"
)

func init() {
    http.HandleFunc("/", handler)
}

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprint(w, "testwong")
}
```

#Shared Library Compile.

* 리눅스에서 so파일을 만들고 python에서 활용하는 방법을 설명한다.
* 컴파일 해야하는 go 코드이다.
```
package main
//export DoubleIt
func DoubleIt(x int) int {
    return x * 2
}
func main() {}
```

* 위 코드를 컴파일 하기 위해서는 GOPATH/src/doubler/main.go 로 저장해야한다.
* //export DoubleIt은 꼭 명시해야한다.

* 빌드방법이다.
```
go build -o libdoubler.so -buildmode=c-shared doubler
```

* 현재경로에 so파일이 컴파일 된다.
* 파일을 점검해본다.
```
file libdoubler.so
nm -D libdoubler.so | grep "T DoubleIt"
```
* Python에서 사용하는 방법이다.
```
import ctypes
lib = ctypes.CDLL("libdoubler.so")
lib.DoubleIt(21)
```


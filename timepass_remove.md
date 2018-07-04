time pass remove
====
* 시간이 3일 지난 데이터는 삭제하는  스크립트이다.

```
$ find target_path/* -mtime +3 -exec rm -rf {} \;
```

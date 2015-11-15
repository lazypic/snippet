# NFS server setting for OSX

## 서버 셋팅하기
`sudo vim /etc/exports`
* add line

`/Volumes/name -maproot=root:wheel -network 192.168.56.0 -mask 255.255.255.0`

`sudo nfsd enable`

`sudo nfsd start`


##클라이언트 셋팅하기
`vim /etc/fstab`

* add line

`192.168.56.0:/Volumes/name /mnt/name nfs defaults 0 0`


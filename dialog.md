# dialog & gdialog

#### install
```
yum install dialog
yum install gdialog //gnome version
```


#### exemple
```
dialog --msgbox "hello world" 9 18
```
| 종류 | 사용옵션 | argv |
| -- | -- | -- |
| 체크상자 | --checklist | text height width item_height [tail text state] ...|
| 정보상자 | --infobox | text height width |
| 입력상자 | --inputbox | text height width init_string|
| 메뉴상자 | --menubox | text height width menu_height [tail item]...|
| 메시지상자 | --msgbox | text height width|
| 라디오 선택상자 | --radiolist | text height width item_height [tail text state] ...|
| 텍스트상자 | --textbox | filename height width|
| yes/no box | --yesno | text height width |


# kill using cpu 100% process
```
top -b -n 1 | head | grep -A 1 PID | grep "^[0-9]" | cut -f1 -d" " | xargs kill
```

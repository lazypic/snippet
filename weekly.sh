git log --oneline --all --since=1.weeks | grep '\[*\]' | awk '{for(i=2;i<=NF;++i)printf("%s ",$i); printf("\n");}'

du -k * --max-depth=1| sort -nr | cut -f2 | xargs -d '\n' du -sh

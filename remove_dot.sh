find ./ -depth -name '.*.mp4' -print0 | xargs -r0 rename -v 's|/\.+([^/]+)$|/$1|'

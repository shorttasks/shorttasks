#!/bin/bash
echo ''
echo ''
# cat "$HOME/.shorttasks/ascii.txt"
 source "$HOME/.shorttasks/lib/banner.sh"
echo ''
echo '   short  :      instead of                     '
echo '----------------------------------------------'
echo '     g     :     git '
echo '     ga    :     git add '
echo "     gc '' :     git commit -m '' "
echo '     gca   :     git commit  -a --amend --no-edit '
echo '     gco   :     git checkout -b '
echo '     gs    :     git status '
echo '     h     :     gh (github-cli)  '
echo '     pull  :     git pull '
echo '     push  :     git push '
echo '     n     :     npm run '
echo '     pn    :     pnpm run '
echo '     y     :     yarn '
# echo '     l     :     l {any above command} (executes for each immediate folder)'
echo '     st    :     your shortasks help (this)'
echo 
 read -p "more..." </dev/tty

echo '$ gc "commit message"           - runs in every first level dir that is git enabled.'
echo '$ gc webapp/. "commit message"  - runs in webapp folder.'  
echo '$ gc . "commit message"         - runs in current folder.'
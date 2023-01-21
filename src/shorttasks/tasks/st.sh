#!/bin/bash
echo 
echo
cat "$HOME/.shorttasks/ascii.txt"
echo
echo ' st   : this shortasks help.'
echo ' g    : git '
echo ' ga   : git add '
echo ' gc   : git commit -m "" '
echo ' gca  : git commit  -a --amend --no-edit '
echo ' gpl  : git pull '
echo ' gpsh : git push '
echo ' gs   : git status '
echo ' n    : npm run '
echo ' pn   : pnpm run '
echo ' y    : yarn '
echo 
echo 'For all commands: call without params gives specific command help.'
echo
echo 'For all commands: first param optional relative directory to execute command in.'
echo 'Which is great for Mono/Poly/Multi repos'
echo 'for example:'
echo '$> gc "commit message"             - executes in current folder.'
echo '$> gc webapp "commit message"      - executes in webapp folder.'  
echo

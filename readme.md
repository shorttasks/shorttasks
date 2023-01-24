# ShortTasks

Configure commands with super powers.
Designed for mono/multi/poly repos.
Never have to type cd.. again.
Faster context/multi-project switching.

Designed for maximum flow and ease of use.
Opinionated: by default these types of actions run across multipe directories.
This is how we want to work - with multiple repository folders.
Going more specific is allowed: just add /. if you want to action task on
a single target.
eg:
gs packages -executes for all child dirs of packages.
gs packages/webapp/. -executes only for webapp
gs ./. - executes only for current directory. (yes we & you want to get away from this as it means navigation in and out of folders!)
ga shorttasks.app/. .

99% of the time you want to do git actions on at least one entire repo.
-or a repo that is initialised for git.
so by setting a applicable we can negate the need to add /.

ShortTasks allow you to avoid changing directory, type a lot less and so stay in the flow for 99% of git and yarn/npm/pnpm tasks.

Simple easily customisable toolbelt especially useful for
mono/multi/poly repos. Run packaging and git tasks like a Boss.
Allows you to get in the flow and do this chore stuff without having
to think about it super fast!

would you rather type:
`yarn workspaces @scopedpackage/appname scripttorun`
or:
`y appfolder scripttorun`

`git commit -C appfolder -a --amend --no-edit`
or
`gca appfolder`

plus lots more...

### install:

```
yarn sti  #(short tasks install)
# or
npm run sti
```

### remove:

```
yarn str # (short tasks remove)
```

ShortTasks are made for you by the above install are:

| ShortTask | executes   | example                    | Compared to | key hit saving |
| --------- | ---------- | -------------------------- | ----------- | -------------- |
| g         | git        | g app branch -l            |
| gs        | git status | gs site                    |
| ga        | git add    | ga uicomponents            |
| gc        | git commit | gc peers 'commit mmessage' |
| gp        | git push   | gp web                     |
| gpl       | git pull   | gpl web                    |
| n         | npm run    | n app                      |
| pn        | pnpm run   | pn app                     |
| y         | yarn       | y app start                |

st : this shortasks help.
g : git
ga : git add
gc : git commit -m ""
gca : git commit -a --amend --no-edit
gco : git checkout -b
gpl : git pull
gps : git push
gs : git status
n : npm run
pn : pnpm run
y : yarn
l : l {any above command} (executes for each immediate folder)

all shortcuts are simple aliased shell scripts. ready for you to
customise however you like:
Edit/add tasks.
Add help to st.sh
`yarn str && yarn sti` - updated and good to go.

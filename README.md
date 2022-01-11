# Personal dotfiles

Using [HN comment](https://news.ycombinator.com/item?id=11070797).

- Replicate in a new machine

```shell
git clone --separate-git-dir=${HOME}/.dotfiles https://github.com/wjes/dotfiles.git ${HOME}/tmp
cp -a ~/tmp/. ~
rm -r ~/tmp
```

- Run git commands

```shell
git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME} <git-command>
```

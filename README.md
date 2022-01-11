# Personal dotfiles

Using [HN comment](https://news.ycombinator.com/item?id=11070797).

- To replicate on a new machine

```shell
git clone --separate-git-dir=~/.dotfiles https://github.com/wjes/dotfiles.git ~/tmp
cp -a ~/tmp/. ~
rm -r ~/tmp
```

- To commit changes

```shell
git --git-dir=~/.dotfiles/ --work-tree=~ <git-command>
```

Use GNU Parallel to link config files in the home folder quickly:

```
ls -1 -d ~/dotfiles/* | grep -v 'nvim' | sort -V | parallel -j 1 'ln -sfv {} ~/.{/}'

ls -1 -d ~/dotfiles/* | grep 'nvim' | sort -V | parallel -j 1 'ln -sfv {} ~/.config/{/}'
```

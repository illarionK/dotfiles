Use GNU Parallel to link config files in the home folder quickly:

```
ls -1 -d ~/dotfiles/* | sort -V | parallel -j 1 'ln -sfv {} ~/.{/}'
```

Files in this directory are the exact output of `dconf dump DIRECTORY`,
but with `DIRECTORY and` a blank line prepended to the beginning of the
output.  `postinstall` installs each file using the following code,
executed from within the directory in which `postinstall` is located:

```bash
# Set dconf and gconf settings
for i in dconf/*; do
 if [ "$i" != "dconf/README.md" ]; then
  # First line is dconf directory name; second line is empty;
  # dconf settings dump starts on the third line.
  tail -n+3 "$i" | dconf load "`head -n1 "$i"`"
 fi
done
```

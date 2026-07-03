`/nonexistent` is a placeholder — it's intentionally a path that doesn't exist, so that `ls` fails on it and prints to stderr, while `/tmp` (which does exist) succeeds and prints to stdout. That's the whole point of the exercise: you get one stream with real output and one stream with an error, so you can see them land in different places. No setup needed.

Here's the breakdown:

ls /nonexistent /tmp 1> out.txt 2> err.txt

- `1> out.txt` sends stdout (the successful listing of `/tmp`) into `out.txt`
- `2> err.txt` sends stderr (the "No such file or directory" message about `/nonexistent`) into `err.txt`

Run that, then `cat out.txt` and `cat err.txt` to see them split apart.

For redirecting both to the *same* file, the naive-looking version is actually a trap:

```bash
ls /nonexistent /tmp > both.txt 2> both.txt
```

This looks reasonable but can clobber data due to how the two redirects open the file separately. The correct idiom is:

```bash
ls /nonexistent /tmp > both.txt 2>&1
```

Order matters here. `> both.txt` first points stdout at the file. Then `2>&1` says "make stderr go wherever stdout is currently going" — i.e., the same file. If you flipped the order (`2>&1 > both.txt`), stderr would bind to wherever stdout was *before* the redirect (likely your terminal), and you'd lose the error output to the screen instead.


stdin = 0
stdout = 1
stderr = 2

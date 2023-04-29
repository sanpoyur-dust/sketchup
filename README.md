# SketchUP

Building `sketch` from source is not easy. This repository contains patched stable branches for `sketch-frontend` and `sketch-backend` to make the process easier.

Originally, I wished to use `docker compose up` to automate the process even further, hence the name.
However, it takes forever for `maven` to download the dependencies, so I gave up on that.

I only tested it on my Ubuntu 22.10 x86_64 server, so it might not work on other platforms.

## Building

If you have `apt` on your Linux distro, you can install all the dependencies by running:

```sh
./install-deps.sh
```

Otherwise, inspect `apt-packages.txt` and install the corresponding packages manually.

After that, you can install `sketch` to `$HOME/.local/bin` by running:

```sh
./install-sketch.sh
```

If you have `$HOME/.local/bin` in your `$PATH`, now you can run `sketch` directly.

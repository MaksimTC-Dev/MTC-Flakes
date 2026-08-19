# MTC's Nix Files

> Version: master

A reproducible development environment for C, Python, and Bash managed via Nix Flakes

- **C Toolchain:** `gcc`, `gnumake`, `gdb`, `valgrind`
- **Python Environment:** `python3` with `cffi`, `cython`, `numpy`, `pytest`, `invoke`
- **Bash Tools:** `bashInteractive`, `shellcheck`, `shfmt`
-
Enter the shell:
   ```bash
$ nix develop

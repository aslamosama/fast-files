<h1 align="center">Fast Files</h1>
<p>
  <a href="#" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

> Fast Files is a project consisting of two bash scripts, `ff` and `ffv`, that combine the functionality of `mkdir` and `touch`, enabling you to create directory structures and files in a single command. The `ffv` script additionally prints the created objects in a tree-like structure using `eza`, `lsd` or `ls`.

## Scripts

- `ff`: creates the specified files and directories without printing any output.
- `ffv`: performs the same operations as `ff` but also lists the created objects.

## ✨ Features

- Create single or multiple files and directories in one command.
- Automatically create parent directories as needed.
- Supports brace expansion for creating complex directory and file structures in one go.
- Optionally lists the created objects with enhanced listing tools (`eza` or `lsd`) if available, or fallback to `ls` (`ffv` only).

## 🛠️ Dependencies

- bash
- Optional: [eza](https://github.com/eza-community/eza) or [lsd](https://github.com/lsd-rs/lsd) for enhanced directory listing

## 🏗️ Installation

Place both scripts in a directory included in your `$PATH`. Ensure the scripts are executable:

```bash
chmod +x /path/to/ff
chmod +x /path/to/ffv
```

Or use the provided Makefile with `sudo make install`. It will install the scripts in `/usr/local/bin`.

## 🚀 Usage

```bash
ff [path file or folder]
ffv [path file or folder]
```

### Arguments

- `--help` or `-h` : Prints usage information

### Examples

- Create a single file:
  ```bash
  ff file
  ```
  ```
  ───file
  ```

- Create a single directory:
  ```bash
  ff dir/
  ```
  ```
  ───dir
  ```

- Create multiple files:
  ```bash
  ff file1 file2 file3
  ```
  ```
   ┌─file1
  ─┼─file2
   └─file3
  ```

- Create multiple directories:
  ```bash
  ff dir1/ dir2/ dir3/
  ```
  ```
   ┌─dir1
  ─┼─dir2
   └─dir3
  ```

- Create a file in a directory:
  ```bash
  ff dir/file
  ```
  ```
  ───dir───file
  ```

- Create a directory within a directory:
  ```bash
  ff dir1/dir2/
  ```
  ```
  ───dir1───dir2
  ```

- Create multiple files in multiple directories:
  ```bash
  ff dir1/dir2/file1 dir3/file2
  ```
  ```
   ┌─dir1───dir2───file1
  ─┴─dir3───file2
  ```

- Use [brace expansion](https://www.gnu.org/software/bash/manual/html_node/Brace-Expansion.html) for complex structures (supported in bash, zsh, fish):
  ```bash
  ff dir1/{dir2/{file1,file2}.txt,dir3/file3.txt}
  ```
  ```
                 ┌─file1.txt
  ───dir1─┬─dir2─┴─file2.txt
          └─dir3───file3.txt
  ```

## 🔗 Related Projects

[Advanced New File](https://github.com/tanrax/terminal-AdvancedNewFile)

## ❤️ Show Your Support

Give a ⭐️ if this project helped you.

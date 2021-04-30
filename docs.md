# Documentation

This documentation assumes you have already downloaded and installed *SembleLang*, if not, <a href="/downloads.html">download it here</a>.

## Setting up a Semble project

Open your favorite IDE or text editor and create a file called `main.smb`. (If you installed the *VSCode* extension in the installer, you may want to choose that).

## Compiling and running Semble code

Let us say for this section's sake that the file you are working with is titled `main.smb`

To compile, run the following command:

```bash
$ semble main.smb
```

If you list the current directory as such:

```bash
$ ls
```

You will see your binary (by default `semble.out` unless you use a `-o` argument or use the `#program` header).

To run said binary do as such (replace the `*` with your binary name):

```bash
$ ./*
```

# Hello, World!

```
#include io.smb
#program main

fn main() => {
    print("Hello, World!");
}
```
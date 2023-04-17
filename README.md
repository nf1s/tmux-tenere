# Tmux-tenere

TUI interface for LLMs built in Rust

## ⚙️ Installation

### Install tenere

You can download the prebuilt binaries from the release page.

For MacOs users, you can use [brew](https://brew.sh/) to install it as follows:

```bash
brew tap pythops/tenere
brew install tenere
```

Otherwise, you can build from source. This requires [Rust](https://www.rust-lang.org/) compiler and
[Cargo package manager](https://doc.rust-lang.org/cargo/).

Once Rust and Cargo are installed, run the following command to build:

```bash
cargo build --release
```

This will produce an executable file at `target/release/tenere` that you can copy to a directory in your `$PATH`.

### Install tmux-tenere

Install via TPM

Add this line to your `~/.tmux.conf`

```bash
set -g @plugin 'nf1s/tmux-tenere'
```

Reload configuration, then press prefix + I.

### Configuration

by default to start tenere Prefix + t

#### Default Configuration

```bash
set -g @tmux-tenere-key-binding 't'
set -g @tmux-tenere-width '80%'
set -g @tmux-tenere-height '80%'
```

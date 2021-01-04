# brotli-wasm-rust

Based on https://github.com/phiresky/rust-brotli-wasm

Built on Ubuntu Server (20.10). Some packages (binaryen) may not be available in older versions of ubuntu  

```
$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 20.10
Release:        20.10
Codename:       groovy
```

# Install modules which will be required by later packages
```
sudo apt-get update
sudo apt install build-essential
sudo apt-get install pkg-config libssl-dev
sudo apt-get install binaryen
```

# Install rust
```
curl https://sh.rustup.rs -sSf | sh
```

## Install target wasm32 and wasm-bindgen
rustup default nightly
rustup target add wasm32-unknown-unknown
cargo install wasm-bindgen-cli
cargo install --git https://github.com/alexcrichton/wasm-gc

## Run build script
sh ./build.sh

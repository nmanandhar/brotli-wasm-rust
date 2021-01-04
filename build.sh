RUSTFLAGS='-C opt-level=z' cargo +nightly build --target wasm32-unknown-unknown --release
wasm-bindgen target/wasm32-unknown-unknown/release/brotli_wasm_rust.wasm --out-dir target
wasm-gc target/brotli_wasm_rust_bg.wasm
wasm-opt -O3 -Oz --duplicate-function-elimination --enable-mutable-globals -o target/brotli_wasm_rust_bg.wasm target/brotli_wasm_rust_bg.wasm
FROM rust:1.56.1

RUN cargo install wasm-pack && rustup target add wasm32-unknown-unknown

COPY / /src/

RUN cd /src/ && wasm-pack build -t web .

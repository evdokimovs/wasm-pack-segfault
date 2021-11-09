ARG ver=latest
FROM rust:${ver}

RUN cargo install wasm-pack && rustup target add wasm32-unknown-unknown

COPY / /src/

RUN cd /src/ && wasm-pack build -t web .

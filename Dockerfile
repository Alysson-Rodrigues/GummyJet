FROM rust:alpine3.17


WORKDIR /usr/src/app

COPY . .

RUN cargo new GummyJet --bin
RUN cargo install diesel_cli --no-default-features --features postgres
RUN diesel setup 

RUN cargo build --release

CMD ["./target/release/gummyjet"]
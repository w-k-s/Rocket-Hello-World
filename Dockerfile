FROM linkerd/rustup-nightly:latest

RUN /install-rust.sh 

COPY . /app
WORKDIR /app
CMD ROCKET_ENV=staging cargo run

EXPOSE 8000
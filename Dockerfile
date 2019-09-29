FROM python:3.6
RUN pip install awscli
RUN curl https://github.com/rust-lang-nursery/mdBook/releases/download/v0.3.1/mdbook-v0.3.1-x86_64-unknown-linux-gnu.tar.gz -L -o mdbook.tar.gz
RUN tar -zxvf mdbook.tar.gz
RUN mkdir -p /usr/bin
RUN mv mdbook /usr/bin/mdbook
ENV PATH $PATH:/usr/bin/mdbook
RUN mkdir /mdbook
WORKDIR /mdbook

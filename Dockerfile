FROM ruby:latest
RUN useradd -m cocoapods
RUN gem install cocoapods
WORKDIR /work
RUN chown cocoapods:cocoapods /work
ENV LANG C.UTF-8
USER cocoapods
CMD bash

FROM swift:4.0

WORKDIR /package

COPY . ./

# Helps with: https://bugs.swift.org/browse/SR-6500
RUN rm -rf /package/.build/debug

RUN swift package resolve
RUN swift package clean
CMD swift test

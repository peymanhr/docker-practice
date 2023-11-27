FROM ubuntu:22.04 AS build

RUN apt-get update && apt-get install -y build-essential

COPY readenv.c /

RUN gcc readenv.c -o readenv

FROM busybox

COPY --from=build /readenv /readenv

CMD ["/readenv"]



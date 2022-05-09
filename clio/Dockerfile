FROM ghcr.io/foobarwidget/holy-build-box-x64

RUN yum install -y devtoolset-10 bison flex
COPY compile.sh compile.sh
COPY build_deps.sh build_deps.sh
RUN /build_deps.sh

CMD ["/compile.sh"]

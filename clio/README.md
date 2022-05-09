Dockerfile and scripts that build `clio_server` with [Holy Build Box](https://phusion.github.io/holy-build-box).

Building and running the image like:

    git clone http://XRPLF/docker.git && cd docker/clio
    docker build -t hbb_clio_builder
    ./hbb_docker.sh <clio_source_dir>


will leave you a clio_server build dir in the `clio_source_dir`
Update versions in `build_deps.sh` as needed.

The hbb-activate script is not called because some flags were not set causing the build to fail.
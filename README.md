# Docker image to run the emll library

This repo contains a docker recipe to install the dependencies for [pstjohn/emll](https://github.com/pstjohn/emll). Since the method was based on tools in the pymc3 library, which itself relies on the deprecated Theano package, dependency installation can be a bit of a pain.

The `pip`-installed Theano has proven to be a bit more reliable than the one available via `conda`, although the installation of mkl via `conda` is more convenient.

To run the docker image, the following command mounts the `examples/` directory and launches a jupyter lab instance:
```bash
docker run --mount type=bind,source="$(pwd)"/examples,target=/home/jovyan/examples -p 8888:8888 -it pstjohn/emll start.sh jupyter lab
```

The image is also runnable on HPC systems with [`singularity`](https://sylabs.io/singularity/).

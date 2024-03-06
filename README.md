# **Paperback**

[![paperback](https://img.shields.io/static/v1?label=paperback&message=ghcr&color=white&logo=github)](https://github.com/rumbleFTW/paperback/pkgs/container/paperback)
[![paperback](https://img.shields.io/static/v1?label=paperback&message=dockerhub&color=blue&logo=docker)](https://hub.docker.com/repository/docker/rumbleftw/paperback/general)

## **Paperback is a minimal container for data analysis, machine learning, and scientific computing**

Paperback comes pre-installed with most of the tools and libraries required for scientific-computing out-of-the-box. The Pre-installed packages can be found [here](https://github.com/rumbleFTW/paperback/blob/cpu/requirements.txt).

Paperback comes in multiple flavours including:

1. `cpu`: optimized for environments without GPU acceleration. It is suitable for running on CPU-only machines or for development and testing purposes. [[branch](https://github.com/rumbleFTW/paperback/tree/cpu)]

2. `cuda`: includes support for GPU acceleration using NVIDIA CUDA. It is optimized for environments with CUDA-enabled GPUs and provides faster computation for machine learning and deep learning tasks. [[branch](https://github.com/rumbleFTW/paperback/tree/cuda)]

## Pre-requisites

Before using this Docker image, ensure that you have the following prerequisites installed:

- Docker: [official Docker website](https://www.docker.com/get-started).

- Nvidia container toolkit [only for cuda flavour]: [official Nvidia website](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)

## Usage

### Pulling the Docker Image

You can pull the latest version of the Docker image from GitHub packages using the following command:

```bash
docker pull ghcr.io/rumbleftw/paperback:cpu
```

### Running the Container

To run the Docker container, use the following command:

```bash
docker run -p 5000:1337 ghcr.io/rumbleftw/paperback:cpu
```

PS: By default the jupyter token is set as `paperback`. It can be modified in the Dockerfile.

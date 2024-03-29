# pyaction-lite
A base Docker image for Github Actions implemented in Python

| __Docker Hub__ | [![Docker Image Version (latest by date)](https://img.shields.io/docker/v/cicirello/pyaction-lite?label=Docker%20Hub&logo=docker)](https://hub.docker.com/r/cicirello/pyaction-lite) [![Docker Pulls](https://img.shields.io/docker/pulls/cicirello/pyaction-lite?logo=docker)](https://hub.docker.com/r/cicirello/pyaction-lite) |
| :--- | :--- |
| __GitHub__ | [![GitHub release (latest by date)](https://img.shields.io/github/v/release/cicirello/pyaction-lite?logo=github)](https://github.com/cicirello/pyaction-lite/releases) |
| __Image Stats__ | [![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/cicirello/pyaction-lite?logo=docker)](https://hub.docker.com/r/cicirello/pyaction-lite) |
| __Build Status__ | [![build](https://github.com/cicirello/pyaction-lite/workflows/build/badge.svg)](https://github.com/cicirello/pyaction-lite/actions/workflows/docker-image.yml) |
| __License__ | [![GitHub](https://img.shields.io/github/license/cicirello/pyaction-lite)](https://github.com/cicirello/pyaction-lite/blob/master/LICENSE) |
| __Support__ | [![GitHub Sponsors](https://img.shields.io/badge/sponsor-30363D?logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://github.com/sponsors/cicirello) [![Liberapay](https://img.shields.io/badge/Liberapay-F6C915?logo=liberapay&logoColor=black)](https://liberapay.com/cicirello) [![Ko-Fi](https://img.shields.io/badge/Ko--fi-F16061?logo=ko-fi&logoColor=white)](https://ko-fi.com/cicirello) |

## Summary

This Docker image is designed to support implementing Github Actions 
with Python. It uses Alpine Linux as a base to keep the image relatively
small for faster loading of the Github Action. It then adds Python 3, and only
Python 3. By using a prebuilt image, it prevents the Github Action
from requiring an installation of python each time the action runs. It
is not limited to use with Github Actions, so other use-cases where you
only need python are applicable.  

The pyaction-lite Docker image is based on
[pyaction](https://github.com/cicirello/pyaction).  However, pyaction
additionally includes git, so the pyaction image is a bit larger than pyaction-lite.

## Multiplatform Image

pyaction-lite has the following platforms available:
* linux/386
* linux/amd64
* linux/arm/v6
* linux/arm/v7
* linux/arm64
* linux/ppc64le
* linux/s390x 

## Source Repository and Builds

The [source repository](https://github.com/cicirello/pyaction-lite) is maintained on GitHub.  The images are built on Github and pushed to [Docker Hub](https://hub.docker.com/r/cicirello/pyaction-lite), as well as the [Github Container Registry](https://github.com/cicirello?ecosystem=container&tab=packages) using Github Actions.

## Docker Tags and Versioning Scheme

Each image pushed to Docker Hub and the Github Container Registry is tagged as follows:
* The tag `latest` indicates, well, the latest image.
* Tags of the form MAJOR.MINOR.PATCH (such as 3.13.5) indicate the SemVer of 
  the __Alpine__ image used as the base.
* Tags of the form MAJOR.MINOR (e.g., 3.13) correspond to the most recent patch level of
  the __Alpine__ image used as the base. For example, if 3.13.5 is the latest
  release, then 3.13 maps to this as well.
* Tags of the form MAJOR (e.g., 3) correspond to the most recent patch level of
  the __Alpine__ image used as the base, with major corresponding major version. 
  For example, if 3.13.5 is the latest release, then 3 maps to this as well.

[Semantic Versioning](https://semver.org/) uses version numbers 
of the form: MAJOR.MINOR.PATCH, where differences in 
MAJOR correspond to incompatible changes, differences in MINOR 
correspond to introduction of backwards compatible new functionality, 
and PATCH corresponds to backwards compatible bug fixes.


## Installation and Usage

The pre-built image is hosted on both Docker Hub and the Github Container Registry. You can use it in the following ways.

### Docker Pull Command

Pull the latest image from Docker Hub with the following (replace `latest` with 
a specific version number if you prefer):

```
docker pull cicirello/pyaction-lite:latest
```

Pull from the Github Container Registry with:

```
docker pull ghcr.io/cicirello/pyaction-lite:latest
```


### Use as a base image in a Dockerfile

Use as a base image in a Dockerfile (replace `latest` with 
a specific version number if you prefer):

```Dockerfile
FROM cicirello/pyaction-lite:latest

# The rest of your Dockerfile would go here.
```

Or you can use as a base image (via the Github Container Registry) with:

```Dockerfile
FROM ghcr.io/cicirello/pyaction-lite:latest

# The rest of your Dockerfile would go here.
```


## License
### Source Code License
The source code, including the Dockerfile and anything
else within the [Github repository for pyaction-lite](https://github.com/cicirello/pyaction-lite), is licensed under the
[MIT License](https://github.com/cicirello/pyaction-lite/blob/master/LICENSE).

### Image Licenses
As with all pre-built Docker images, the image itself (once built, or obtained from
Docker Hub or the Github Container Registry) contains software that is covered by a
variety of licenses. Since the base image is Alpine, this would include
the [licenses of the components of Alpine](https://pkgs.alpinelinux.org/),
as well as the [licenses for Python](https://docs.python.org/3/license.html).  

If you build and distribute an image containing your software, 
using pyaction-lite as the base image, it
is your responsibility to follow the licenses of all of the
software contained within the image.  

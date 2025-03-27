# Customized Cloud Workstation Image

This repository contains a Dockerfile for building a customized Cloud Workstation image.  

The image is based on the default Cloud Workstations `us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest` image and includes several customizations for development tasks and product demos.

## Image Customizations

The Dockerfile performs the following customizations:

* **Installs essential packages:** To make the demo scenarios easier to run.
* **Installs ZSH plugins:**  To help with auto completion etc. in an optional ZSH terminal environment.
* **Custom Startup Scripts:** Includes customization scripts in the [startup-scripts](./startup-scripts/) folder to configure the Cloud Workstation at runtime

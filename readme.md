<div align="center">

# Docker image for Automatic1111

[![python](https://img.shields.io/badge/python-3.10-green)](https://www.python.org/downloads/)
[![cuda](https://img.shields.io/badge/cuda-12.4-green)](https://developer.nvidia.com/cuda-downloads)
[![mit](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

</div>

## Tags
| Tag    | Description                      | Size      |
| ------ | -------------------------------- | --------- |
| latest | python 3.10, Automatic1111 1.9.4 | ~ 30.5 GB |


## Extensions
- [sd-webui-deforum](https://github.com/deforum-art/sd-webui-deforum.git)
- [sd-webui-controlnet](https://github.com/Mikubill/sd-webui-controlnet.gi)
- [sd-webui-inpaint-anything](https://github.com/Uminosachi/sd-webui-inpaint-anything.git)
- [sd-webui-reactor](https://github.com/Gourieff/sd-webui-reactor.git)
- [Adetailer](https://github.com/Bing-su/adetailer.git)

## Models
### Checkpoints
- [DreamShaper-8](https://huggingface.co/jzli/DreamShaper-8/tree/main)
- [stable-diffusion-xl-base-1.0](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/tree/main)
- [stable-diffusion-xl-refiner-1.0](https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/tree/main)

### Vae
- [vae-ft-mse-840000-ema-pruned](https://huggingface.co/stabilityai/sd-vae-ft-mse-original/tree/main)

### Loras
- [lcm_sd15](https://huggingface.co/latent-consistency/lcm-lora-sdv1-5/tree/main)

### Controlnets
- [control_v11p_sd15_openpose](https://huggingface.co/lllyasviel/ControlNet-v1-1/tree/main)
- [control_v11f1p_sd15_depth](https://huggingface.co/lllyasviel/ControlNet-v1-1/tree/main)
- [control_v11p_sd15_lineart](https://huggingface.co/lllyasviel/ControlNet-v1-1/tree/main)

## Ports

| Connect Port | Internal Port | Description   |
| ------------ | ------------- | ------------- |
| 22           | 22            | SSH Server    |
| 8188         | 8188          | Automatic1111 |
| 8888         | 8888          | Jupyter Lab   |

## Environment Variables

Each of the following environment variable is optional, set either `SSH_PASSWORD` or `PUBLIC_KEY` for ssh access

| Variable     | Description                             |
| ------------ | --------------------------------------- |
| SSH_PASSWORD | Password for ssh access                 |
| PUBLIC_KEY   | Public Key for ssh access               |
| SSH_USER     | Username for ssh access (default: root) |


## Running locally
```bash
docker run -d \
  --gpus all \
  -p 22:22 \
  -p 8188:8188 \
  -p 8888:8888 \
  yuvraj108c/a1111:latest
```

## Building the docker image
```bash
git clone git https://github.com/yuvraj108c/Automatic1111-Docker.git
cd Automatic1111-Docker
docker-compose build latest
```

## License
CC BY-NC-SA 4.0
docker pull rocm/7.0-preview:rocm7.0_preview_ubuntu_22.04_vllm_0.8.5_mi35X_prealpha

docker run -it \
    --ipc=host \
    --network=host \
    --privileged \
    --cap-add=CAP_SYS_ADMIN \
    --cap-add=SYS_PTRACE \
    --security-opt seccomp=unconfined \
    --device=/dev/kfd \
    --device=/dev/dri \
    -v $(pwd):/workspace \
    -e USE_FASTSAFETENSOR=1 \
    -e SAFETENSORS_FAST_GPU=1 \
    rocm/7.0-preview:rocm7.0_preview_ubuntu_22.04_vllm_0.8.5_mi35X_prealpha \
    bash


# If all the files become root-owned, run this command to fix it:
# sudo chown -R 23120:100 /workspace/

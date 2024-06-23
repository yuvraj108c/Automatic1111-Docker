#!/bin/sh

mkdir -p /workspace/a1111
mv /temp/a1111/* /workspace/a1111
mv /temp/a1111/.* /workspace/a1111

cd /workspace/a1111/venv/bin
sed -i "s|/temp/a1111|/workspace/a1111|g" *

cd /workspace/a1111

. venv/bin/activate && nohup jupyter-lab --allow-root --ip  0.0.0.0 --NotebookApp.token='' --notebook-dir /workspace/a1111 --NotebookApp.allow_origin=* --NotebookApp.allow_remote_access=1 &

. venv/bin/activate && python launch.py --listen --opt-sdp-attention
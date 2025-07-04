# 1. Inherit the full Leap ML image
FROM quay.io/sed2194/leap-jupyterhub:latest

# 2. Become root to install
USER root

# 3. Install the Amazon Q Developer extension (server + frontend)
RUN pip install amazon-sagemaker-jupyter-ai-q-developer \
    && jupyter server extension enable amazon_sagemaker_jupyter_ai_q_developer \
    && jupyter labextension install @aws-samples/amazon-q-jupyterlab

# 4. Drop back to the jovyan user
USER jovyan

# 1. Inherit the full Leap ML image
FROM quay.io/jbusecke/leap-edu-image:latest

# 2. Become root to install
USER root

# 3. Install the Amazon Q Developer extension (server + frontend)
RUN pip install amazon-q-developer-jupyterlab-ext \
    && jupyter server extension enable amazon_q_developer-jupyterlab-ext \

# 4. Drop back to the jovyan user
USER jovyan

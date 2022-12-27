FROM nvcr.io/nvidia/pytorch:21.08-py3
RUN apt update && apt install -y zip htop screen libgl1-mesa-glx
RUN pip install seaborn thop
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /workdir
# ENTRYPOINT [ "/bin/bash" ]
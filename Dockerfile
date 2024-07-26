FROM pytorch/pytorch:2.2.1-cuda12.1-cudnn8-devel

RUN apt-get update && apt-get install -y libgl1-mesa-glx libpci-dev curl nano psmisc zip git python3-dev python3.9 python3.9-dev && apt-get --fix-broken install -y

RUN conda install -y scikit-learn pandas flake8 yapf isort yacs future libgcc

RUN pip install --upgrade pip && python -m pip install --upgrade setuptools && \
    pip install opencv-python tb-nightly matplotlib logger_tt tabulate tqdm wheel mccabe scipy

COPY ./fonts/* /opt/conda/lib/python3.10/site-packages/matplotlib/mpl-data/fonts/ttf/

FROM pytorch/pytorch:1.3-cuda10.1-cudnn7-runtime

RUN apt-get update && apt-get install -y \
  graphviz

RUN pip install --upgrade pip setuptools \
  && pip install matplotlib jupyter torchviz

CMD ["jupyter", "notebook", "--allow-root"]

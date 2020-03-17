FROM pytorch/pytorch:1.3-cuda10.1-cudnn7-runtime

RUN pip install --upgrade pip setuptools \
  && pip install matplotlib jupyter

CMD ["jupyter", "notebook", "--allow-root"]

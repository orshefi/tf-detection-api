  
FROM orshefi/tf-detection-base

ARG DEBIAN_FRONTEND=noninteractive

RUN pip install jupyter matplotlib awscli tqdm requests boto3

WORKDIR /workspace

CMD ["jupyter", "notebook", "--allow-root", "--ip", "0.0.0.0", "--NotebookApp.token", "uatt", "--NotebookApp.password", "uatt"]


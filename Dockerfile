FROM python:3.6

WORKDIR /astronet

RUN pip install tensorflow==1.15.0 && pip install pandas && pip install numpy && pip install seaborn && pip install scipy && pip install astropy && pip install pydl && curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg && mv bazel-archive-keyring.gpg /usr/share/keyrings && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list && apt update && apt install bazel && apt install vim -y

COPY . .

#CMD ["jupyter notebook"]
#CMD ["python", "astronet/index.py"]

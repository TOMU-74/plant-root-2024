FROM python:3.9

#Linux関連、コンテナ内で使いたいコマンドをインストール
RUN apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0 git 

#イメージを使う時にコンテナ内にcopyで指定したアドレスをコピーする
COPY requirements.txt .
#pythonのパッケージをまとめてインストール
RUN pip install -r requirements.txt

#コンテナ内に入った時の作業するディレクトリ
WORKDIR /work

FROM python:3.10-slim

# 必要なシステムライブラリ（gdal, spatialindex）
RUN apt-get update && apt-get install -y \
    build-essential \
    gdal-bin \
    libgdal-dev \
    libspatialindex-dev \
    && rm -rf /var/lib/apt/lists/*

# GDALのヘッダー検索用（必要に応じて）
ENV CPLUS_INCLUDE_PATH=/usr/include/gdal
ENV C_INCLUDE_PATH=/usr/include/gdal

# 作業ディレクトリ
WORKDIR /app

# Pythonライブラリのインストール
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# ポート設定
EXPOSE 8888

# JupyterLab 起動（トークンなし・root許可）
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root",

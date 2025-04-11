FROM python:3.10-slim

# 必要なシステムライブラリ（rasterio, geopandas用）
RUN apt-get update && apt-get install -y \
    build-essential \
    gdal-bin \
    libgdal-dev \
    libspatialindex-dev \
    && rm -rf /var/lib/apt/lists/*

# Pythonライブラリのインストール
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# ポートとワークディレクトリ
WORKDIR /app
EXPOSE 8888

# Jupyterを起動（オプション）
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]

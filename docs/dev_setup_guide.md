# 開発環境構築ガイド (WSL + Docker Compose + JupyterLab)

## 前提
このガイドは GitHub に掲載されたリポジトリ [alos2_sar_to_geo](https://github.com/xniconicox/alos2_sar_to_geo) をクローンし、WSL(ウィンドウズサブシステムルインドックス) 上の Docker 環境で JupyterLab を開始して開発を行うための手順を記述したものです。

---

## ステップ 1: GitHub からリポジトリを clone

```bash
cd ~
git clone https://github.com/xniconicox/alos2_sar_to_geo.git
cd alos2_sar_to_geo
```

---

## ステップ 2: Docker Compose による環境構築


### ビルドと起動

```bash
docker compose up --build
```

> 初回は `--build` を付けて Docker イメージを構築します。

---

## ステップ 3: JupyterLab のアクセス

1. ブラウザで [http://localhost:8888](http://localhost:8888) を開く
2. トークン無しでログインされます
3. `/app` 配下に、ノートブックやスクリプトが表示されます

---

## JupyterLab の停止方法とライフサイクル

### 停止方法：
- ターミナルで `Ctrl + C` を押すことで停止可能
- バックグラウンド起動時は以下のように停止：

```bash
docker compose down
```

### 再開・再利用：
- 以下のコマンドで再度起動可能：

```bash
docker compose up
```

---

## トラブルシューティング
- Jupyterが立ち上がらない → `docker-compose.yml` の `command` を見直す
- `rasterio` や `geopandas` で ImportError → GDALの依存ライブラリやパス設定を確認

---

## メモ
- `requirements.txt` は Dockerfile と同じディレクトリに置く
- Dockerfile および docker-compose.yml は リポジトリ直下で管理
- `.gitignore` で `data/` や `results/` を除外するのを忘れずに


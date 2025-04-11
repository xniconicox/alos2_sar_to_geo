```markdown
# ALOS-2 SAR to Geo

ALOS-2のSAR画像をPythonで前処理し、地理情報付きで可視化するプロジェクトです。

## 🔧 環境構築（Docker）
```bash
docker build -t alos2-sar .
docker run -p 8888:8888 -v $(pwd):/app alos2-sar
```

## 📁 ディレクトリ構成
- `notebook/`：Jupyter Notebook
- `scripts/`：再利用可能なPythonスクリプト
- `data/`：生データ（.gitignore対象）
- `results/`：出力結果（.gitignore対象）

## 📓 やっていること
1. ALOS-2のSARデータ取得
2. Pythonで前処理（正規化・ノイズ除去など）
3. GeoTIFF化・マッピング
```

---

## 🚀 次のステップ

1. 上記構成をローカルに作成
2. GitHubでリポジトリ作成（例：`alos2-sar-to-geo`）
3. `.gitignore` 設定後、初回コミット
4. 必要に応じて `data/` など除外設定しつつ進行

---

DockerfileとREADMEは最初のコミットで公開しておくと、他の人もすぐ試せる状態になります。

Dockerのビルド・起動やGitHubの初期化でつまづくところがあれば、いつでも声かけてくださいね！

フォルダ名は「`alos2_sar_to_geo`」でOKそうですか？また必要なら最初の `requirements.txt` も生成してお渡ししますよ！
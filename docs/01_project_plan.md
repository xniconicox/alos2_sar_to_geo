# プロジェクト計画書: ALOS-2 SAR to Geo

## 1. プロジェクト名
ALOS-2 SAR to Geo プロジェクト

## 2. 背景と目的
地理情報を持たないSARデータをPythonで前処理し、ジオコーディングされた形式で可視化するパイプラインを構築する。
このプロジェクトは、ALOS-2 PALSAR-2 Level 1.1データを実際に利用し、データの読み込みから地理情報の付与、可視化までをDocker環境で再現可能な形で実装することを目標とする。

## 3. スコープ
- 実施データ: ALOS-2 PALSAR-2 Level 1.1
- 入力: SARデータ、同働メタデータ
- 出力: GeoTIFF化されたデータ、Folium/地図のマップ表示
- ツール: Python (rasterio, geopandas, folium)
- 環境: Docker
- 目的達成時: Jupyter Notebook + 再現可能なDockerfileが全てGitHubに掲載されていること

## 4. 体制
- 実装: 個人開発
- 統合: GitHub上でコード管理
- ドキュメント: Markdown形式でdocs/配下に管理

## 5. スケジュール
| 日付 | 内容 |
|--------|--------|
| 4/ | フォルダ構成作成、Dockerベース環境編集 |
| 4/ | データ収集、読み込みスクリプト作成 |
| 4/ | 前処理(正規化、ノイズ除去)の実装、GeoTIFF化 |
| 4/ | マップ表示、Notebookへまとめ |
| 4/ | GitHubへ公開、Zenn向け記事草稿開始 |

## 6. 成果物
- Jupyter Notebook (`notebook/`)
- Python Scripts (`scripts/`)
- Dockerfile / requirements.txt
- README.md
- 記事草稿 (`article_draft/alos2_sar_to_geo.md`)
- Markdown形式の開発計画書系 (`docs/`)


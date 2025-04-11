# Git リモート操作ガイド: push/pull の概念と実践

## 概念
Gitにおける「push」や「pull」は、ローカル環境とGitHubなどのリモートリポジトリ間でコードをやりとりするための基本操作です。

- **push**: ローカル → リモート (自分の変更をGitHubに送信)
- **pull**: リモート → ローカル (GitHubの変更を取り込む)
- **clone**: 初回だけ行う、リモートリポジトリ全体の複製

---

## 初回: clone (リモートを手元に持ってくる)

```bash
git clone https://github.com/<username>/<repository>.git
cd <repository>
```

---

## 変更をGitHubに送りたい (push)

```bash
# 1. 新しいファイルを追加
nano sample.py

# 2. コミットのための追加
git add sample.py

# 3. コミット(変更記録)
git commit -m "Add sample.py"

# 4. push で GitHub に送信
git push origin main
```

> 注: `main`はブランチ名。現在のブランチは `git branch` で確認可能

---

## GitHub上で他の人や自分の別環境で変更があった (pull)

```bash
# GitHub上の変更を取り込む
# (同じリポジトリの最新状態に合わせる)
git pull origin main
```

---

## コミットログを確認

```bash
git log --oneline
```

---

## トラブルシューティング
- push 時の認証エラー → Personal Access Token (PAT)を使用
- pull 時のマージエラー → `git stash`や `git pull --rebase` などで対処

---

## メモ
- GitHub上でリポジトリを先に作り、localのディレクトリをあわせるのが一般的
- GitHub DesktopやVSCodeのGit GUIを使うとより覚えやすい


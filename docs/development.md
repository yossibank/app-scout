# 開発の手順

> [!NOTE]
> app-scout を手元で動かす手順と、確認のコマンドが分かる。
> 入れる道具は [README](../README.md#-入れ方) にある。

## 💻 動かし方

Web API は、次のコマンドで手元に立てる。立てた後は `http://127.0.0.1:8000/docs` で API の一覧を見られる。

```sh
make run
```

## 🧪 確認

変更したら、次のコマンドで lint・型・テストをまとめて通す。CI も同じコマンドを通す。

```sh
make verify
```

| コマンド | すること |
| --- | --- |
| `make lint` | Ruff で lint と整形を見る |
| `make format` | Ruff で直せる所を直し、整形する |
| `make typecheck` | mypy の strict で型を見る |
| `make test` | pytest でテストを通す |

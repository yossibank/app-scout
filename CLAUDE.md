# app-scout

競合アプリのレビューから不満を集め、企画書の下書きを作るエージェントのリポジトリ。

## 作業の進め方

作業では、次の決まりを守る。

- 変更したら `make verify` を通す。lint・型・テストをまとめて見る。
- 依存は `uv add` で足し、`uv.lock` を同じ commit に入れる。
- Claude API を呼ぶ実行は、費用がかかる。動かす前に、人に回数と見込みの額を伝えて承認を得る。
- API キーは環境変数 `ANTHROPIC_API_KEY` で渡す。コードと文書に書かない。

## 構成

コードは、次の場所に置く。

| 置くもの | 場所 |
| --- | --- |
| パッケージ | `src/app_scout/` |
| Web API | `src/app_scout/api.py` |
| テスト | `tests/`。`test_<対象>.py` の名前にする |
| CI | `.github/workflows/ci.yml`。`make verify` を通す |

## 文書の役割

文書ごとに、次のことを書く。

| 文書 | 書くこと |
| --- | --- |
| `docs/overview.md` | 狙い、守ること、解決したい不満、最初のリリースの機能、未決 |
| `docs/development.md` | 動かし方とコマンド |
| `docs/roadmap.md` | 作る順番と状態、ポートフォリオの中の位置 |

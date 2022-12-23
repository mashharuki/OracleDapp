# Oracel-dapp

## Foundry とは

Foundry は hardhat のような Dapp の開発環境を提供してくれる Rust 製のツール。開発・テスト・デプロイなどのコードを Solidity で全て書けて便利なツールである。

- Forge: アプリのセットアップ/ビルド/テストを行うためのツール
- Cast: スマートコントラクトとの通信を行うクライアント
- Anvil: ローカル開発用のローカルノード

### コマンド系

- build command

```bash
forge build
```

```bash
[⠊] Compiling...
[⠒] Installing solc version 0.8.17
[⠒] Successfully installed solc 0.8.17
[⠰] Compiling 18 files with 0.8.17
[⠒] Solc 0.8.17 finished in 1.74s
Compiler run successful
```

- test command

```bash
forge test
```

```bash
[⠢] Compiling...
No files changed, compilation skipped

Running 2 tests for test/Counter.t.sol:CounterTest
[PASS] testIncrement() (gas: 28356)
[PASS] testSetNumber(uint256) (runs: 256, μ: 27409, ~: 28342)
Test result: ok. 2 passed; 0 failed; finished in 9.27ms
```

### Using Price Feeds

チェーンリンクデータフィードは、スマートコントラクトを現実のアセット市場価格に接続する最も迅速な方法です。例えば、データフィードの 1 つの用途は、スマートコントラクトが 1 回の呼び出しで資産の最新の価格データを取得することを可能にすることです。

このガイドは、特に EVM チェーンでデータフィードを使用することに適用されます。EVM チェーン上で動作するチェーンリンク価格フィードの完全なリストを取得するには、コントラクトアドレスページを参照してください。

###　参考文献

1. [Ethereum の Dapp 開発環境の Foundry を使ってみる](https://zenn.dev/razokulover/articles/574eb471e6db1c)
2. [foundry writing tests](https://book.getfoundry.sh/forge/writing-tests)
3. [Using Chainlink data feeds with Foundry](https://chainstack.com/using-chainlink-data-feeds-with-foundry/)

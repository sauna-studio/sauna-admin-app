# sauna-admin-app
Sauna Studio admin-app


## Scope

管理者・スタッフ向けSwiftUI iOS・iPadOSアプリ。iOS・iPadOS 27.2以上。予約・設備・在庫・シフト管理を扱う。

## Architecture

社員はGoogle Workspace組織アカウントとの紐付けを必須とするが、SaunaログインはPasskeyのみ。施設権限の最終判断はAPIが行う。

## Verification

実装後は対象Xcodeでbuild/testとSimulator動作検証を行い、所属喪失・施設権限不足時の拒否を検証する。

現在は最小Foundation libraryのhost/iOS Simulator SDK compileと依存・compiler policy検査を追加しています。管理アプリの業務画面・認証の動作検証はまだ含みません。

[AGENTS.md](AGENTS.md) と [CONTRIBUTING.md](CONTRIBUTING.md) に従い、Issueの依存関係を満たしてから独立Review Agentを並行起動して実装します。共通規則適用元: [sauna-studio/.github@075c6695309d](https://github.com/sauna-studio/.github/tree/075c6695309d28baad2dc1391d7d3821b81142cc)。

## Apple dependency / compiler foundation

指定libraryの事前catalogと自前Swift6 compiler policyを追加しています。[依存・利用範囲・検証手順](docs/dependency-catalog.md)を参照してください。catalogの解決とruntime利用を区別し、未実装の画面・認証機能を完成扱いにしません。

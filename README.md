# mdbook starter

# mdbook をつくる

## 準備

```shell
cp env.sample env
```

.env ファイルにポートや、コンテナの実行ユーザーを設定します。

必要に応じてコメントアウトされた値を設定しなおしてください。

## 起動

```shell
docker-compose up
```

最初の起動では mdbook ディレクトリに mdbook ファイルが作成されます。

[http:localhost:3000](http:localhost:3000) (指定したポートに変更する) へアクセスすると、ページが表示されます。

## 編集

mdbook を起動した上で mdbook ディレクトリ以下のファイルを変更するとページに反映されます。

細かいルールは [mdBook \- mdBook Documentation](https://rust-lang-nursery.github.io/mdBook/) を参照してください。

以下のページでおおむね把握できます。

- [SUMMARY\.md \- mdBook Documentation](https://rust-lang-nursery.github.io/mdBook/format/summary.html)
- [Configuration \- mdBook Documentation](https://rust-lang-nursery.github.io/mdBook/format/config.html)

# 手動デプロイ

s3 にバケットを用意した上で以下を実行すると `mdbook/book` 以下のファイルがデプロイされます。

```shell
docker-compose -f docker-compose-deployment.yml up
```

# CircleCI でデプロイ

CircleCI 側の環境変数に以下の環境変数を設定します

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_DEFAULT_REGION
- BUCKET_NAME
- DEPLOYMENT=true
- BUILDING=true

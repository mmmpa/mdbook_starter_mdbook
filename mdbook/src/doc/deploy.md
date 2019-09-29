# 手動デプロイ

s3 にバケットを用意した上で以下を実行すると `mdbook/book` 以下のファイルがデプロイされます。

```shell
docker-compose -f docker-compose-deployment.yml up
```

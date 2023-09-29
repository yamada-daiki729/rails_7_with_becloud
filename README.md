# README

## versions
Ruby 3.2.2  
rails 7.0.7.2  
mysql 8.0  
ridgepoleを使い Schemafifleでデータを管理しています。

# 環境構築手順

## Docker環境構築の場合
#### 事前準備
Docker for macインストールしておいてください

#### 構築手順
1. リポジトリをクローンしてくる

```
git clone git@github.com:startup-technology/sekisui_care_app.git
```

2. 設定ファイルのコピー
```
# docker-compose.ymlのコピー
cp ./docker/docker-compose.yml.default docker-compose.yml
```
※ M1チップを使用している場合
`cp ./docker/docker-compose.yml.default.m1 docker-compose.yml`

3. dockerのビルドと起動
```
docker-compose up -d --build
```

# remove-time-stamp-from-filename

## 実行方法

1. 該当のディレクトリに `./remove-time-stamp.sh` を配置して、実行権限を付与してください。

##### 実行権限の付与方法

```bash
chmod +x ./remove-time-stamp.sh
```

2. `./remove-time-stamp.sh` を実行してください。

##### 実行方法

```bash
./remove-time-stamp.sh
```

3. ファイル名変更の対象ファイル一覧が表示されるので、よければ `y` を入力してください。

```bash
mv b570cae0-f094-4244-8cef-4145d8162983_1_20240614014102.zip -> b570cae0-f094-4244-8cef-4145d8162983_1.zip
mv b570cae0-f094-4244-8cef-4145d8162983_20240614014102.json -> b570cae0-f094-4244-8cef-4145d8162983.json

2 will be renamed. Do you want to continue? [y/n] y
```

## その他の実行方法

### 拡張子を指定して実行する

```bash
./remove-time-stamp.sh *.zip *.json
```

### ディレクトリを指定して実行する

```bash
./remove-time-stamp.sh /path/to/dir
```

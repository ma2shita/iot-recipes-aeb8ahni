# iot-recipes

IoT Recipes for Marketplace items.

- 公開先 (当面): GItHub Pages / https://soracom.github.io/iot-recipes/RECIPE_NAME/
    - e.g.) https://soracom.github.io/iot-recipes/door-monitoring-by-soracom-lte-m-button/

### Note;

ブログ統合の件をきっかけに進めているサイト統合の目途が立ったら引っ越しをします。引っ越し手法はHTMLリダイレクト方式とします。  
Google Anaytics はプロファイルのデフォルトURLを `https://soracom.github.io/iot-recipes` と設定しておき、引っ越し後はデフォルトURLを書き換えて再利用します。その際、流入元が GitHub Pages になるためトラフィックの様子を見てクローズを決定します。また、あまりにも流入が止まらないようであれば個別にトラッキングして流入源を特定し更新するようにします。

See more: https://scrapbox.soracom.io/general/%E3%83%AC%E3%82%B7%E3%83%94%E3%82%B5%E3%82%A4%E3%83%88_%E3%83%87%E3%82%A3%E3%82%B9%E3%82%AB%E3%83%83%E3%82%B7%E3%83%A7%E3%83%B3

#### Configure for GitHub Pages

- DocumentRoot is `docs/`.
- Installed plugins are `jekyll-redirect-from` by `docs/_config.yml`.

#### Tracking by Google Analytics

Their contents are Using Google Analytics. Bound property is `iot-recipes` and Tracker ID is `UA-66865146-33`.

### Ops.;

This repository is used to delivers CLaaT content on GitHub Pages.

```
$ cd docs/
$ claat export -ga UA-66865146-33 -prefix https://soracom.github.io/iot-recipes GOOGLE_DOCS_ID
$ git add . && git commit -m "YOUR_COMMENT" && git push
```

#### About docs/utils/* files;

オリジナルのJS/CSSファイルにSORACOM独自のCSS/JSを追加して配信するため、ローカルに保存しています。

- `check_updates`: 最新バージョンのチェックを行う
- `fetch_cssjs`: オリジナルからCSS/JSを取得する
- `patch_cssjs`: 取得したCSS/JSにパッチを当てる

実行の仕方

```
$ cd docs/
$ utils/check_updates || utils/fetch_cssjs && utils/patch_cssjs
```

#### Google Docs IDs

See: https://scrapbox.soracom.io/general/%E3%83%AC%E3%82%B7%E3%83%94(iot-recipes)%E3%81%AB%E9%96%A2%E3%81%99%E3%82%8B%E6%83%85%E5%A0%B1%E9%9B%86%E7%B4%84%E5%A0%B4


EoT

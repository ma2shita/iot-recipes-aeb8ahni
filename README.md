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

- Main recipes.
    - door-monitoring-by-soracom-lte-m-button | [content](https://soracom.github.io/iot-recipes/door-monitoring-by-soracom-lte-m-button), [Docs](https://docs.google.com/document/d/1UVakbTNl33Tml_wSB_zFd-YDV66S-puGXIjxRIlwiVw/edit?usp=sharing) | `1UVakbTNl33Tml_wSB_zFd-YDV66S-puGXIjxRIlwiVw`
    - vehicle-tracking-by-meitrack-t366 | [content](https://soracom.github.io/iot-recipes/vehicle-tracking-by-meitrack-t366), [Docs](https://docs.google.com/document/d/1GozK8FEoxNNzzSRfWeMhFAqCr38myfsgybKIvOtrd1U/edit?usp=sharing) | `1GozK8FEoxNNzzSRfWeMhFAqCr38myfsgybKIvOtrd1U`
- Handson contents for sandbox. U can use for operation and Google Analytics tests.
    - create-account-soracom-jp | [content](https://soracom.github.io/iot-recipes/create-account-soracom-jp), [Docs](https://docs.google.com/document/d/1aOA8X9ru25EbBKqikVlxLrWTe-dJZDUOZVhqjYJL7mI/edit?usp=sharing) | `1aOA8X9ru25EbBKqikVlxLrWTe-dJZDUOZVhqjYJL7mI`
    - register-ordering-sim-jp | [content](https://soracom.github.io/iot-recipes/register-ordering-sim-jp), [Docs](https://docs.google.com/document/d/1ytB9ZMEl3WwP_o9rqTggWtFzLVlgOz7CJ9QEfzTH9Uw/edit?usp=sharing) | `1ytB9ZMEl3WwP_o9rqTggWtFzLVlgOz7CJ9QEfzTH9Uw`
    - register-byod-sim-jp | [content](https://soracom.github.io/iot-recipes/register-byod-sim-jp), [Docs](https://docs.google.com/document/d/1tnsn9E2HO1RI397ck2otl0I-LQGhtlMqrHj-Zu7zB54/edit?usp=sharing) | `1tnsn9E2HO1RI397ck2otl0I-LQGhtlMqrHj-Zu7zB54`
    - wio-lte-handson-100 | [content](https://soracom.github.io/iot-recipes/wio-lte-handson-100), [Docs](https://docs.google.com/document/d/1WjXrAIr8DLeddNAP1s3vBcK7VWFejdkuewUzwTm4c_g/edit?usp=sharing) | `1WjXrAIr8DLeddNAP1s3vBcK7VWFejdkuewUzwTm4c_g`
    - claat-start-100 | [content](https://soracom.github.io/iot-recipes/claat-start-100), [Docs](https://docs.google.com/document/d/1GHDSvRgDdxNAKKH8Fz5T3DgaQMIdirIs8S-MJQ8poTg/edit?usp=sharing) | `1GHDSvRgDdxNAKKH8Fz5T3DgaQMIdirIs8S-MJQ8poTg`
    - claat-google-analytics-200 | [content](https://soracom.github.io/iot-recipes/claat-google-analytics-200), [Docs](https://docs.google.com/document/d/1J9TGH-0R94Kp1chx0lHZpEbl5B4Jje9CZZgygMP7jus/edit?usp=sharing) | `1J9TGH-0R94Kp1chx0lHZpEbl5B4Jje9CZZgygMP7jus`
    - chrome-remotedesktop-100 | [content](https://soracom.github.io/iot-recipes/chrome-remotedesktop-100), [Docs](https://docs.google.com/document/d/1BLGPudU0piT7zlasXVCEgmv48n-YewfgStVz_jmhGD0/edit?usp=sharing) | `1BLGPudU0piT7zlasXVCEgmv48n-YewfgStVz_jmhGD0`

EoT

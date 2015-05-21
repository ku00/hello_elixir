# Elixir勉強会第一回

## Elixir is 何
関数型だけど怖くないよ

## 作った人
Jose Valim←歩く生産性

## インスコ
brewでおk

## 型
一つずつ見てくよ

### atom
rubyでいうsymbolみたいだけどGCされないから気をつけてね

### binary
<<1>>は0000001と同じ
<<1, 0>> == <<256::size(16)>>

### string
""と''で実態が変わるよ
""はバイナリ、''はリスト

### list
単方向リストだから先頭への要素追加は高速

### tuple
ランダムアクセスO(1)だよ、速いよ

### map
map = %{price: 2000}
map.prece atomの場合のみ

### range
4..-5

### function
fn (x, y) -> x * y end


## 制御構文
### cond
上から見てって真ならその行のを実行

### 無いやつ
return, loop, while

## パターンマッチ
### アンスコ
[head | _] = [1,2,3]

### ピン止め
変数の前に^をつける

### モジュールと関数
defmoduleで定義
IO.inspectがデバッグに便利

### 原則
あらゆる関数はモジュールに属する
名前かarityが違うならばそれは違う関数

## Mix

## Hex

## Elixirプロジェクトつくるよ

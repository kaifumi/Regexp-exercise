# scanメソッドは引数で渡した正規表現にマッチする部分を配列に入れて返す。  

p '123 456 789'.scan(/\d+/)  #=> ["123", "456", "789"]

p '1993年10月1日 2020年5月10日'.scan(/(\d+)年(\d+)月(\d+)日/)
#=> [["1993", "10", "1"], ["2020", "5", "10"]]

# グループ化はしたいが、キャプチャはしたくない（マッチした文字列全体を取得したい）という場合は、(?:)というメタ文字を使う。  
p '1993年10月1日 2020年5月10日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
#=> ["1993年10月1日", "2020年5月10日"]

# なお、上の正規表現の場合は(?:)を使わずに、\d+年\d+月\d+日と書いたほうが簡潔な正規表現になる。  
p '1993年10月1日 2020年5月10日'.scan(/\d+年\d+月\d+日/)
#=> ["1993年10月1日", "2020年5月10日"]
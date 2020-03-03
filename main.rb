class Brave

    # ゲッターの代わりになる
    attr_reader :name, :offense, :defense
    # HP以外は書き換えられると困るので、HPのみセッターも定義
    attr_accessor :hp

    # newされたときに呼び出される
    # initializeによりセッターが不要になる
    # **引数 とすることでハッシュしか受け取れなくなる
    def initialize(**params)
        @name = params[:name]
        @hp = params[:hp]
        @offense = params[:offense]
        @defense = params[:defense]
    end

end

# 勇者クラスをインスタンス化
brave = Brave.new(name: "テリー",hp: 500,offense: 150,defense: 100)

# start initializeメソッドにより不要
# # パラメーターに値を設定
# brave.name = "テリー"
# brave.hp = 500
# brave.offense = 150
# brave.defense = 100
# end

puts <<~EOS
    NAME: #{brave.name}
    HP: #{brave.hp}
    OFFENSE: #{brave.offense}
    DEFENSE: #{brave.defense}
EOS

brave.hp -= 30

puts "#{brave.name}はダメージを受けた！　残りHPは#{brave.hp}だ！"

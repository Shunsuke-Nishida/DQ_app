class Brave

    # nameのゲッター
    def name
        @name
    end

    # nameのセッター
    def name=(name)
        @name = name
    end

    # hpのゲッター
    def hp
        @hp
    end

    # hpのセッター
    def hp=(hp)
        @hp = hp
    end

    # offenseのゲッター
    def offense
        @offense
    end

    # offenseのセッター
    def offense=(offense)
        @offense = offense
    end

    # defenseのゲッター
    def defense
        @defense
    end

    # defenseのセッター
    def defense=(defense)
        @defense = defense
    end

end

# 勇者クラスをインスタンス化
brave = Brave.new

# パラメーターに値を設定
brave.name = "テリー"
brave.hp = 500
brave.offense = 150
brave.defense = 100

puts <<~EOS
    NAME: #{brave.name}
    HP: #{brave.hp}
    OFFENSE: #{brave.offense}
    DEFENSE: #{brave.defense}
EOS

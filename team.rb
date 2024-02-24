=begin
class Team
  attr_accessor :name, :win, :lose, :draw, :suffix

  def initialize(name, win = 0, lose = 0, draw = 0, suffix)
    self.name = name 
    self.win = win
    self.lose = lose
    self.draw = draw
    self.suffix = suffix
  end

  # メソッド名を変更しています
  def full_name
    name + suffix
  end

  def calc_win_rate
    win.to_f / (win + lose)
  end
  
  def show_team_result
    # full_name メソッドを使ってチーム名を取得します
    puts "#{full_name} の2020年の成績は #{win}勝 #{lose}敗 #{draw}分、勝率は #{calc_win_rate} です。"
  end
end
  
Teams = [
  Giants = Team.new('Giants', 67, 45, 8, ''), # suffix 引数に空文字列を渡しています
  Tigers = Team.new('Tigers', 60, 53, 7, ''),
  Dragons = Team.new('Dragons', 60, 55, 5, ''),
  BayStars = Team.new('BayStars', 56, 58, 6, ''),
  Carp = Team.new('Carp', 52, 56, 12, ''),
  Swallows = Team.new('Swallows', 41, 69, 10, '')
]
    
Giants.show_team_result
Tigers.show_team_result
Dragons.show_team_result
BayStars.show_team_result
Carp.show_team_result
Swallows.show_team_result
=end



# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    @name = name 
    @win = win
    @lose = lose
    @draw = draw
  end

  # インスタンスが持つメソッド（処理）
  # 勝率の計算
  def calc_win_rate
    @win.to_f / (@win + @lose)
  end
  
  # チームの成績をターミナルに表示する
  def show_team_result
  puts "#{@name} の2020年の成績は #{@win}勝 #{@lose}敗 #{@draw}分、勝率は #{calc_win_rate} です。"
  end
end
  
  # インスタンスの生成と、変数への代入
  teams = [
    Team.new('Giants', 67, 45, 8),
    Team.new('Tigers', 60, 53, 7),
    Team.new('Dragons', 60, 55, 5),
    Team.new('BayStars', 56, 58, 6),
    Team.new('Carp', 52, 56, 12),
    Team.new('Swallows', 41, 69, 10)
    ]
    
    # インスタンスの使用
    teams.each do |team|
      team.show_team_result
    end
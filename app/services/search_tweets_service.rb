class SearchTweetsService
  def self.search(search)
    #self.searchは SearchTweetsServiceクラスのインスタンスである
    #selfは SearchTweetsServiceが代入された形
    # 引数searchは検索ワードを受け取っている
    if search != ""
      #もし検索ワードの文字列が空でない時 （!=  等しくない）
      Tweet.where('text LIKE(?)', "%#{search}%")
      # search(検索ワードに含まれるtext)をレスポンスで返す
    else
      Tweet.all
    end
  end
end
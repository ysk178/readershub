class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '文学・評論' },
    { id: 3, name: 'ノンフィクション' },
    { id: 4, name: 'ビジネス・経済' },
    { id: 5, name: '歴史・地理' },
    { id: 6, name: '政治・社会' },
    { id: 7, name: '芸能・エンタメ' },
    { id: 8, name: 'スポーツ' },
    { id: 9, name: 'アウトドア' },
    { id: 10, name: 'アート・建築・デザイン' },
    { id: 11, name: '人文・思想・宗教' },
    { id: 12, name: 'くらし・健康・料理' },
    { id: 13, name: 'サイエンス・テクノロジー' },
    { id: 14, name: 'IT' },
    { id: 15, name: '趣味・実用' },
    { id: 16, name: '教育・自己啓発' },
    { id: 17, name: '事典・年鑑・本・ことば' },
    { id: 18, name: '音楽' },
    { id: 19, name: '旅行・紀行' },
    { id: 20, name: '絵本・児童書' },
    { id: 21, name: 'コミックス' },
    { id: 22, name: 'その他' }
  ]

    include ActiveHash::Associations
    has_many :books
  end
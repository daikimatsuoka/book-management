class Category < ActiveHash::Base
  self.data = [
   { id: 1, name: '---' },
   { id: 2, name: '文芸' },
   { id: 3, name: '教養' },
   { id: 4, name: '人文' },
   { id: 5, name: '教育' },
   { id: 6, name: '社会' },
   { id: 7, name: '法律' },
   { id: 8, name: '経済' },
   { id: 9, name: '経営' },
   { id: 10, name: 'ビジネス' },
   { id: 11, name: '就職・資格' },
   { id: 12, name: '理学' },
   { id: 13, name: '工学' },
   { id: 14, name: 'コンピュータ' },
   { id: 15, name: '医学' },
   { id: 16, name: '看護学' },
   { id: 17, name: '薬学' },
   { id: 18, name: '芸術' },
   { id: 19, name: '語学' },
   { id: 20, name: '辞典' },
   { id: 21, name: '高校学参' },
   { id: 22, name: '中学学参' },
   { id: 23, name: '小学学参' },
   { id: 24, name: '児童' },
   { id: 25, name: '趣味・生活' },
   { id: 26, name: 'くらし・料理' },
   { id: 27, name: '地図・ガイド' },
   { id: 28, name: '文庫' },
   { id: 29, name: '新書' },
   { id: 30, name: 'コミック' },
   { id: 31, name: 'ゲーム攻略本' },
   { id: 32, name: 'エンターテイメント' },
   { id: 33, name: '日記・手帳' }
  ]

  include ActiveHash::Associations
  has_many :books
end
class Scene < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '旅行' },
    { id: 3, name: 'デート' },
    { id: 4, name: 'グルメ' },
    { id: 5, name: '結婚式' },
    { id: 6, name: 'スポーツ' },
    { id: 7, name: 'エンタメ' },
    { id: 8, name: '勉強' },
    { id: 9, name: '出張' },
    { id: 10, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :memories
  end
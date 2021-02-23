class Weather < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '快晴' },
    { id: 3, name: '晴れ' },
    { id: 4, name: '曇り' },
    { id: 5, name: '雨' },
    { id: 6, name: '雪' },
    { id: 7, name: '強風' },
    { id: 8, name: '霧' },
    { id: 9, name: '嵐' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :memories
  
  end
class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: '給与'},
    {id: 2, name: '賞与'},
    {id: 3, name: '家賃'},
    {id: 4, name: '光熱費'},
    {id: 5, name: 'サブスク'},
    {id: 6, name: '定期飲料'},
    {id: 7, name: 'エンタメ'},
    {id: 8, name: '生活雑貨(消耗品)'},
    {id: 9, name: '家具家電'},
    {id: 10, name: '交通費'},
    {id: 11, name: '旅行'}
  ]

  include ActiveHash::Associations
  has_many :incomes
  has_many :outgoes
end

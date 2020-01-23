class Blog < ApplicationRecord
  enum status:{ draft: 0, published: 1 } #возможность выбрать блог в драфте или публикации
  extend FriendlyId #читабельная строка в браузере
  friendly_id :title, use: :slugged #читабельная строка в браузере

  validates_presence_of :title, :body #защита от создания пустого блога
end

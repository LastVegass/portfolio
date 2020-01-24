class Resume < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular #функция вызывающия все айтемы с названием Angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_resume_items, -> {where(subtitle: 'Ruby on Rails')}  #функция вызывающия все айтемы с названием Ruby on Rails

  after_initialize :set_defaults #автоматическое выполнение функции set_defaults при создании resume_item

  def set_defaults #функция дает при создании resume_item дефолтные картинки
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/300x200"
  end
end

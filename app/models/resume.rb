class Resume < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, #создание нескольких атрибутов в виде вложенного хэша у объектов
                                reject_if: lambda { |attrs| attrs['name'].blank? }


  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular #функция вызывающия все айтемы с названием Angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_resume_items, -> {where(subtitle: 'Ruby on Rails')}  #функция вызывающия все айтемы с названием Ruby on Rails

  after_initialize :set_defaults #автоматическое выполнение функции set_defaults при создании resume_item

  def set_defaults #функция дает при создании resume_item дефолтные картинки
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end

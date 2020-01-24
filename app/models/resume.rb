class Resume < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular #функция вызывающия все айтемы с названием Angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_resume_items, -> {where(subtitle: 'Ruby on Rails')}  #функция вызывающия все айтемы с названием Ruby on Rails
end

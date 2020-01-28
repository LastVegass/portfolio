class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable - подтверждение что юзер человек,
  #:lockable - возможность блокировать юзеров ,
  #:timeoutable - выход юзеров из личного кабинета по истечению определенного срока,
  #:trackable
  #:omniauthable - регистрация  с помощью других сервисов например соц сетей вк фейсбук и тд
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates_presence_of :name

  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
end

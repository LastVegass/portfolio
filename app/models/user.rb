class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable - подтверждение что юзер человек,
  #:lockable - возможность блокировать юзеров ,
  #:timeoutable - выход юзеров из личного кабинета по истечению определенного срока,
  #:trackable
  #:omniauthable - регистрация  с помощью других сервисов например соц сетей вк фейсбук и тд
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end

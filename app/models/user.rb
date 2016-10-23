class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable:
  # registerable, removed by Timo - remove later?
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

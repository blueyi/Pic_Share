class User < ActiveRecord::Base
  has_many :albums, dependent: :destroy

  WillPaginate.per_page = 10


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end

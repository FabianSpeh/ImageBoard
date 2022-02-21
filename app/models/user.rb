class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   acts_as_voter      

  has_many :posts
         def getName
          return self.email.split('@')[0].capitalize
         end
end

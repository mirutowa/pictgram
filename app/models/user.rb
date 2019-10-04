class User < ApplicationRecord
validates :name,
  presence: true 
validates :email,
  presence: true, 
  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
validates :password,
  length:{ in: 8..32 }, 
  format: {with: /\A[a-zA-Z0-9]+\z/ }
validates :name,
  length: {minimum: 1,maximum: 15,}
  
has_secure_password

has_many :topics
end

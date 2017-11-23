class User < ApplicationRecord

  has_secure_password

  has_many :posts
  has_many :ratings

  validates_presence_of :username, :email, :password_digest, :role, :service
  validates_uniqueness_of :username, :email, :password_digest, uniqueness: true


  def average_rating(array)
    sum = 0
    array.each do |rating|
      sum += rating
    end
    return (sum / array.length)
  end


end

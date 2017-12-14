class User < ApplicationRecord

  has_secure_password


  has_many :posts
  has_many :ratings
  has_many :conversations


  has_attached_file :avatar, styles: { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates_presence_of :username, :email, :password_digest, :role, :service
  validates_uniqueness_of :username, :email


  def average_rating(array)
    sum = 0
    array.each do |rating|
      sum += rating
    end
    return (sum / array.length)
  end


end

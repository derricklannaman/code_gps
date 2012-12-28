class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email

  validates :first_name, presence: true, length: { maximum: 25 }
  validates	:last_name,  presence: true, length: { maximum: 25 }  
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[\w+\-.]+\.[a-zA-z]+\z/
  validates :email,  presence: true
  validates_format_of :email,  with: VALID_EMAIL_REGEX  

end
 
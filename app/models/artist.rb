class Artist < ActiveRecord::Base
  
  validates_presence_of :name
  validates_uniqueness_of :email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } #:uniqueness => { :case_sensitive => false}

  VALID_PHONE_REGEX = /\A\d{10}\z/
  validates :phone_no, presence: true, format: { with: VALID_PHONE_REGEX}

end

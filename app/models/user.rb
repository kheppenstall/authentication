class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :name, presence: true

  def self.authenticate(email, password)
    User.find_by(email: email, password: password)
  end


end

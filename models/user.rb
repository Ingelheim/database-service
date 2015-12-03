# enable :sessions

class User < ActiveRecord::Base
  validates_presence_of :email, :password
  validates_uniqueness_of :email

  def login_with(password)
    self.password == password
  end

  def to_json
    {username: self.email}.to_json
  end
end

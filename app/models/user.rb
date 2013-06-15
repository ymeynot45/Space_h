class User < ActiveRecord::Base
  validates :username, :password, :presence => :true
  validates :username, :uniqueness => :true
  validates :password, :length => { :minimum => 6 }

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    (user && user.password == password) ? user : nil
  end

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.create(attribs)
    user = User.new(attribs)
    user.password = (attribs[:password])
    user.save!
    user
  end
end

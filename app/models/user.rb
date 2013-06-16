class User < ActiveRecord::Base
  has_many :games_started, class_name: 'Games'
  has_many :games, through: :players
  has_many :players
  
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
end

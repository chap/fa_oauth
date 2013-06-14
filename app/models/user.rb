require 'digest/md5'

class User < ActiveRecord::Base
  def valid_password?(submitted_password)
    password == Digest::MD5.hexdigest(Digest::MD5.hexdigest(submitted_password) + password_salt)
  end

  def to_json(options)
    super(:only => [:id, :username, :email, :first_name, :last_name])
  end
end

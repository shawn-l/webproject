require 'digest/sha2'
module CreateHashedPassword 
  def self.included(base)
    base.extend(ClassMethod)
  end

  module ClassMethod
    def authenticate(id, password)
      if user = find_by_id(id)
        if user.hashed_password == encrypt_password(password,user.salt)
          user
        end
      end
    end
  end

  def encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + "shawn" + salt)
  end

  def password=(password)
    @password = password

    if password.present?
      generate_salt
      self.hashed_password = encrypt_password(password,salt) 
    end
  end

  def password_must_be_present
    errors.add(:password, "Missing password") unless hashed_password.present?
  end

  def generate_salt
    self.salt = self.object_id.to_s + rand.to_s
  end

end

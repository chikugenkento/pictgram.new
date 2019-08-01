class User < ApplicationRecord
end

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  has_secure_password
end

class User < ApplicationRecord
   validates :password, length: { in: 8..32 }  

   validates :name, presence: true,
   length: { maximum: 15 }
end
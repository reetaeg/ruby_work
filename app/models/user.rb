class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
#  class << self
#    def serialize_from_session(key, salt)
#      record = to_adapter.get(key[0]["$oid"])
#      record if record && record.authenticatable_salt == salt
#    end
#  end
         
end

#encoding:utf-8
class Bulletin < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  
  BULLETIN_TYPE ={ notice:"notice",
                   blog:"blog",
                   gallery:"gallery"
                  }
  
end

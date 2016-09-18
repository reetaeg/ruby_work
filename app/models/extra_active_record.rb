class ExtraActiveRecord < ActiveRecord::Base
 self.abstract_class = true
 establish_connection "ora_db"  
end

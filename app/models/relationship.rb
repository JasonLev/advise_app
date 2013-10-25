class Relationship < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :protege
  belongs_to :adviser
end

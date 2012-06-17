class ContentAnnouncement < ActiveRecord::Base
  attr_accessible :clickable, :content, :position, :title
  
  validates_presence_of :title
end

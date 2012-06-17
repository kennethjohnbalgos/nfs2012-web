class ContentCompetition < ActiveRecord::Base
  attr_accessible :clickable, :content, :position, :title
  
  validates_presence_of :title, :position
  validates_numericality_of :position
end

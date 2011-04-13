class Change < ActiveRecord::Base

  CATEGORIES = %w( feature bug update other )

  default_scope :order => "released_on DESC"

  validates_presence_of :entry, :category, :released_on

end
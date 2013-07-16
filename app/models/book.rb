class Book < ActiveRecord::Base
  belongs_to :author
  attr_accessible :pages, :title, :author_id, :cover

  has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"


end

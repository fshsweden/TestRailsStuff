class Author < ActiveRecord::Base

  # Author
  attr_accessible :born, :name
  has_many :books

  # Books relation
  accepts_nested_attributes_for :books
  attr_accessible :books_attributes

end

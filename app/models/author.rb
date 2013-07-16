class Author < ActiveRecord::Base

  # Author
  attr_accessible :born, :name
  has_many :books

  # Books relation
  # See http://currentricity.wordpress.com/2011/09/04/the-definitive-guide-to-accepts_nested_attributes_for-a-model-in-rails-3/

  accepts_nested_attributes_for :books, :allow_destroy => true
  attr_accessible :books_attributes

end

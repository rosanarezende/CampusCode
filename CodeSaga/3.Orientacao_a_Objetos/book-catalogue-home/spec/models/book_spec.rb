require 'rails_helper'

RSpec.describe Book, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  Book.create(title: 'Orgulho e preconceito',
    author: 'Jane Austen',
    publication_year: 1813)
end

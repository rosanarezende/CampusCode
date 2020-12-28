class HomeController < ApplicationController
  def index
    @books = []
    @books << Book.new(title: 'Persépolis', author: 'Marjane Satrapi', publication_year: 2009)
    @books << Book.new(title: 'Orgulho e preconceito', author: 'Jane Austen', publication_year: 1813)
  end
end

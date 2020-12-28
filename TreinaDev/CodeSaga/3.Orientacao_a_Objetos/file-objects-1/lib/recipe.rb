require 'json'
class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:, featured:)
    @title, @description, @ingredients = title, description, ingredients
    @cook_time, @featured = cook_time, featured
  end

  def self.from_json(file_path)
    title, description, ingredients, cook_time, featured = JSON.parse(File.read(file_path)).values
    self.new(title: title, description: description, ingredients: ingredients, cook_time: cook_time,featured: featured)
  end


end

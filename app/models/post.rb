class Post < ActiveRecord::Base
  def self.search(search)
    search.present? ? where(["tittle LIKE ?" ,"%#{search}%"]) : all
  end
end

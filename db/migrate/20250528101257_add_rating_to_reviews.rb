class AddRatingToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :rating, :integer
    add_reference :reviews, :restaurant, null: false, foreign_key: true
  end
end

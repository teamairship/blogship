class AddFieldsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :published_date, :datetime
  end
end

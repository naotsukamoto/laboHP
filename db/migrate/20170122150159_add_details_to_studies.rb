class AddDetailsToStudies < ActiveRecord::Migration[5.0]
  def change
    add_column :studies, :title, :string
    add_column :studies, :auther, :string
    add_column :studies, :published_year_at, :integer
  end
end

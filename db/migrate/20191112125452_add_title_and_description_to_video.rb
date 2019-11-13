class AddTitleAndDescriptionToVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :title, :string, default: ''
    add_column :videos, :description, :string, default: ''
  end
end

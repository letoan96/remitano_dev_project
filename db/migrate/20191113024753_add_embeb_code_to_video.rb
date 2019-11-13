class AddEmbebCodeToVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :embed_code, :text, default: ''
  end
end

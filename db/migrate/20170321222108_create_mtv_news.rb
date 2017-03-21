class CreateMtvNews < ActiveRecord::Migration[5.0]
  def change
    create_table :mtv_news do |t|

      t.timestamps
    end
  end
end

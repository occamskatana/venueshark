class CreateWelcomeds < ActiveRecord::Migration[5.0]
  def change
    create_table :welcomeds do |t|

      t.timestamps
    end
  end
end

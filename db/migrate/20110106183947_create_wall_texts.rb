class CreateWallTexts < ActiveRecord::Migration
  def self.up
    create_table :wall_texts do |t|
      t.string :user
      t.string :city
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :wall_texts
  end
end

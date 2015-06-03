class CreateCoctails < ActiveRecord::Migration
  def change
    create_table :coctails do |t|
      t.datetime :date
      t.string :coctail
      t.string :ingred

      t.timestamps 
    end
  end
end

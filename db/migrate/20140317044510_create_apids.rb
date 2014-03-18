class CreateApids < ActiveRecord::Migration
  def change
    create_table :apids do |t|
      t.string :apid

      t.timestamps
    end
  end
end

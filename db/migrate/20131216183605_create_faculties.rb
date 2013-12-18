class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :position
      t.string :degree
      t.string :office
      t.string :office_time
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end

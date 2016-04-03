class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :Name
      t.string :Email
      t.string :PhoneNumber
      t.text :Message

      t.timestamps null: false
    end
  end
end

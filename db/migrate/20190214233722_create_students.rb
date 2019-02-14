class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :github_username

      t.timestamps
    end
  end
end

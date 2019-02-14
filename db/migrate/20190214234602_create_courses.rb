class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :identifier
      t.string :title
      t.string :term
      t.integer :year, limit: 4
      t.string :github_org
      t.string :site_url

      t.timestamps
    end
  end
end

class Init < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :number
      t.decimal :cpa, default: 0
      t.decimal :gpa, default: 0
      t.jsonb :info, default: {}
      t.string :program
      t.integer :current_semester
      
      t.timestamps
    end
    

    create_table :programs do |t|
      t.string :name
      t.integer :semester
      t.jsonb :info, default: {}

      t.timestamps

    end

    create_table :courses do |t|
      t.string :name
      t.string :label
      t.integer :volumn
      t.jsonb :info, default: {}
      
      t.belongs_to :program
      t.timestamps
    end
 
    create_table :diems do |t|
      t.belongs_to :course
      t.belongs_to :student
      t.string :mark
      t.jsonb :info, default: {}
      
      t.timestamps 
    end

    
  add_foreign_key :diems, :courses
  add_foreign_key :diems, :students
  add_foreign_key :courses, :programs

  end
end

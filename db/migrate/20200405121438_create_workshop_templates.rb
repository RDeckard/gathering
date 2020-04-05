# frozen_string_literal: true

class CreateWorkshopTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :workshop_templates do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

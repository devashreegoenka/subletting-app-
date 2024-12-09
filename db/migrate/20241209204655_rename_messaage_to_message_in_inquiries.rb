class RenameMessaageToMessageInInquiries < ActiveRecord::Migration[7.1]
  def change
    def change
      rename_column :inquiries, :messaage, :message
    end
  end
end

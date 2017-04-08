namespace :imp do
  require 'csv'
  desc 'import records from CSV'
  task import: :environment do
    CSV.foreach('users.csv', headers: true) do |row|
      user_hash = row.to_hash
      user = Users.where(email: user_hash['email'])
      if user.present?
        user.first.assign_attributes(user_hash)
      else
        Users.create!(user_hash)
      end
    end
  end

  desc 'export records to CSV'
  task export: :environment do
    CSV.open('users.csv', 'wb') do |csv|
      csv << Users.column_names
      Users.all.each do |exp|
        csv << exp.attributes. values_at(*Users.column_names)
      end
    end
  end
end

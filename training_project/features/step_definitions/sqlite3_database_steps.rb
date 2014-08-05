When(/^I create two tables "([^"]*)" and "([^"]*)" using sqlite3 adapter$/) do |arg1, arg2|
  Jdbc::SQLite3.load_driver

  ActiveRecord::Base.establish_connection(
      :adapter => "jdbcsqlite3",
      :dbfile  => ":memory:"
  )


  ActiveRecord::Schema.define do
    create_table arg1.to_sym do |table|
      table.column :title, :string
      table.column :performer, :string
    end

    create_table arg2.to_sym do |table|
      table.column :album_id, :integer
      table.column :track_number, :integer
      table.column :title, :string
    end
  end

  class Album < ActiveRecord::Base
    has_many :tracks
  end

  class Track < ActiveRecord::Base
    belongs_to :album
  end

  album = Album.create(:title => 'Black and Blue',
                       :performer => 'The Rolling Stones')
  album.tracks.create(:track_number => 1, :title => 'Hot Stuff')
  album.tracks.create(:track_number => 2, :title => 'Hand Of Fate')
  album.tracks.create(:track_number => 3, :title => 'Cherry Oh Baby ')
  album.tracks.create(:track_number => 4, :title => 'Memory Motel ')
  album.tracks.create(:track_number => 5, :title => 'Hey Negrita')
  album.tracks.create(:track_number => 6, :title => 'Fool To Cry')
  album.tracks.create(:track_number => 7, :title => 'Crazy Mama')
  album.tracks.create(:track_number => 8,
                      :title => 'Melody (Inspiration By Billy Preston)')

  album = Album.create(:title => 'Sticky Fingers',
                       :performer => 'The Rolling Stones')
  album.tracks.create(:track_number => 1, :title => 'Brown Sugar')
  album.tracks.create(:track_number => 2, :title => 'Sway')
  album.tracks.create(:track_number => 3, :title => 'Wild Horses')
  album.tracks.create(:track_number => 4,
                      :title => 'Can\'t You Hear Me Knocking')
  album.tracks.create(:track_number => 5, :title => 'You Gotta Move')
  album.tracks.create(:track_number => 6, :title => 'Bitch')
  album.tracks.create(:track_number => 7, :title => 'I Got The Blues')
  album.tracks.create(:track_number => 8, :title => 'Sister Morphine')
  album.tracks.create(:track_number => 9, :title => 'Dead Flowers')
  album.tracks.create(:track_number => 10, :title => 'Moonlight Mile')


end

Then(/^I query some columns from the table and print to console$/) do
  puts Album.find(1).tracks.length
  puts Album.find(2).tracks.length

  puts Album.find_by_title('Sticky Fingers').title
  puts Track.find_by_title('Fool To Cry').album_id
end

When(/^I connect to development sqlite3 database$/) do
  Jdbc::SQLite3.load_driver

  ActiveRecord::Base.establish_connection(
      :adapter => "jdbcsqlite3",
      :database  => "./features/support/database/development_experimenting.sqlite3"
      #:dbfile  => "./features/support/datafiles/development_experimenting.sqlite3"
  )
  @sqlite3_connection = ActiveRecord::Base.connection
end

Then(/^I print the rows in adoptions table$/) do
  p "# of adoptions--> #{Adoption.count}"
  p "# of Puppies --> #{Puppy.count}"
  p "# of orders --> #{Order.count}"
end

Then(/^I print the rows in adoptions table executing sql$/) do
  adoptions_table = @sqlite3_connection.select_all <<-SQL
select * from adoptions
  SQL

  adoptions_table.each do |row|
    puts row
  end

end



Then(/^I print the row that has id "([^"]*)"$/) do |arg|
  row = Adoption.find_by_id(arg)
  p row
end

Then(/^I update the puppy id for the row whose id is "([^"]*)" and reset it back$/) do |arg|
  row = Adoption.find_by_id(arg)
  original_puppy_id = row['puppy_id']
  p "Original puppy id --> #{original_puppy_id}"
  row['puppy_id'] = '1000'
  row.save
  updated_row = Adoption.find_by_id(arg)
  updated_puppy_id = updated_row['puppy_id']
  p "Updated puppy id --> #{updated_puppy_id}"

  p "Resetting the puppy id to its original value"
  updated_row['puppy_id'] = original_puppy_id
  updated_row.save
  p "Printing the original puppy id --> #{Adoption.find_by_id(arg)['puppy_id']}"

end

Then(/^I print row values using columns "([^"]*)", "([^"]*)","([^"]*)"$/) do |arg1, arg2, arg3|

  adoptions_table = @sqlite3_connection.select_all <<-SQL
select * from adoptions
  SQL

  adoptions_table.each do |row|
    puts "id --> #{row[arg1]}"
    puts "cart id --> #{row[arg2]}"
    puts "puppy id --> #{row[arg3]}"
  end
end

Then(/^I print the rows in adoptions table using columns$/) do
  Adoption.all.each do |row|
    puts "id --> #{row['id']}"
    puts "cart id --> #{row['cart_id']}"
    puts "puppy id --> #{row['puppy_id']}"
  end
end
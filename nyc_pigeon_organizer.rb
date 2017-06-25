=begin
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
=end


def nyc_pigeon_organizer(data)

   unique_pigeons = data.collect do |attribute, varieties|
    varieties.values.flatten
  end.flatten.uniq

  pigeon_list = Hash.new

  unique_pigeons.each do |name|
    pigeon_list[name] = {
      color: [],
      gender: [],
      lives: []
    }
  end

  pigeon_list.each do |name, att|
    att.each do |attribute, values|
      puts values
      data[attribute].each do |type, list|
        values << type.to_s if list.include?(name)
      end
    end
  end
  pigeon_list
end

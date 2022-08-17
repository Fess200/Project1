require 'json'

tags = `git tag`.split("\n")
data_tags = []
tags.each do |tag|
    data_tags.append({:key => tag})
end
all_data = {:options => data_tags}
puts JSON.generate(all_data)
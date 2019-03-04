require 'pry'
def nyc_pigeon_organizer(data)
  names = []
  specs = []
  new_data = {}
  data.each do |category,list|
    specs << category
    list.each do |spec,name|
      names << name
      names = names.flatten.uniq
      names.each do |name2|
        if new_data[name2] == nil
          new_data[name2] = {}
        end
        specs.each do |spec2|
          if new_data[name2][spec2] == nil
            new_data[name2][spec2] = []
          end
          if category == spec2 && name.include?(name2)
            new_data[name2][spec2] << spec.to_s
          end
  end
  end
  end
end
new_data
end

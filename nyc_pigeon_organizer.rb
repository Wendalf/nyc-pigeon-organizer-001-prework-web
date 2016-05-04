def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  pigeon_list = {}
  pigeon_data.each do |attribute, value|
    value.each do |key, pigeons|
      pigeons.each do |pigeon|
        # if pigeon_list.has_key?(pigeon)
        #   if pigeon_list[pigeon].has_key?(attribute)
        #     pigeon_list[pigeon][attribute] << key.to_s
        #   else
        #     pigeon_list[pigeon][attribute] = []
        #     pigeon_list[pigeon][attribute] << key.to_s
        #   end
        # else
        #   pigeon_list[pigeon] = {}
        #   if pigeon_list[pigeon].has_key?(attribute)
        #     pigeon_list[pigeon][attribute] << key.to_s
        #   else
        #     pigeon_list[pigeon][attribute] = []
        #     pigeon_list[pigeon][attribute] << key.to_s
        #   end
        # end
        pigeon_list[pigeon] ||= {}
        pigeon_list[pigeon][attribute] ||= []
        pigeon_list[pigeon][attribute] << key.to_s
      end
    end
  end
  pigeon_list
end
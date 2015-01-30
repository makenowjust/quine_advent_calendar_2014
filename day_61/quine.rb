print ObjectSpace.each_object(String).grep(/print/).max_by(&:size)

#!/usr/bin/env ruby

Dir["data/*.csv"].each do |file|
  system("sed -i -e 1,32d #{file}")
end

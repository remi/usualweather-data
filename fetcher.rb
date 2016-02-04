#!/usr/bin/env ruby

URL = 'http://climate.weather.gc.ca/prods_servs/cdn_climate_summary_report_e.html?intYear=%year%&intMonth=%month%&dataFormat=csv&btnSubmit=Download+Data'.freeze
COMMAND = 'wget "%url%" -O data/%year%-%month%.csv'.freeze

(1970..2015).each do |year|
  (1..12).each do |month|
    url = URL.gsub('%year%', year.to_s).gsub('%month%', month.to_s)

    month = month.to_s.rjust(2, '0')
    command = COMMAND.gsub('%url%', url).gsub('%year%', year.to_s).gsub('%month%', month.to_s)

    puts command
    system(command)
    sleep(1)
  end
end

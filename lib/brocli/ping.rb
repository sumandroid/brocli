require 'httparty'
require 'benchmark'
require_relative 'defaults'
require_relative 'string'

module Ping

  def ping(url, time_limit, time_interval)
    begin
      time_elapsed = 0
      loop_times = (time_limit/time_interval).ceil  #in case of decimal values ceil will ensure that we do not lack intended no. of hits
      loop_times.times do |i|
        sleep(time_interval) unless (i == 0)
        puts "Hitting url #{url}".brown
        real_time = Benchmark.realtime { HTTParty.get(url) } #we call realtime method of Benchmark module to get the real time only. modify it if you want to access any other attributes as well
        puts "Real time for this hit is #{real_time}s".cyan
        time_elapsed += real_time
      end
      return (time_elapsed/loop_times) #returnig the average time of all hits in seconds
    rescue Exception => e
      puts "#{e.message}, make sure you provided the correct url".red
    end
  end

end
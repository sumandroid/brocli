require 'thor'
require_relative 'sanitizer'
require_relative 'defaults'
require_relative 'ping'
require_relative 'string'

module Brocli
  class Initiate < Thor
    desc "hit [URL] [TIME_LIMIT] [TIME_INTERVAL]", "use brocli hit to ping the url. by default url is set to www.gitlab.com."
    long_desc <<-HIT
      brocli hit [URL] [TOTAL_TIME] [TIME_INTERVAL]

      check the average response time for www.gitlab.com after pinging it for 1 minute every 10 seconds

      ** FOR CUSTOM HIT PLEASE PROVIDE ALL THE ARGUMENTS **

      **example: brocli hit 'www.your_domain_name.com' 60 10

      --URL provide url as an option if you want to hit to a specified url
      --TOTAL_TIME provide total_time_limit in seconds as an option if you want to specify the total time limit for hitting the url
      --TIME_INTERVAL provide time_interval in seconds to specify the time interval after which the next hit will occur
    HIT

    include Sanitizer
    include Ping

    def hit(url = Brocli::DEFAULT_URL, time_limit = Brocli::EXECUTION_TIME_LIMIT, time_interval = Brocli::TIME_INTERVAL)
      begin
        average_time = client.ping(client.sanitizer(url), time_limit.to_f, time_interval.to_f)
        raise 'There is some error' unless average_time != nil
        puts "Average response time for #{url} is #{(average_time).round(Brocli::DEFAULT_ROUNDING)}s".green
      rescue Exception => e
        puts e.message.red
      end
    end

    private
    def client
      @client ||= Brocli::Initiate.new
    end
  end
end
module Blunt
  class Range

    attr_accessor :ranges

    def initialize(d, specified_options={})
      
      default_options = {:day   => false,
                         :days  => 7,
                         :time  => false}
      
      options = default_options.merge specified_options
      options[:days] = 7 if options[:days] > 7
      
      case d.class.to_s
      when "Range"
        a, b = [d.first, d.last].map {|it| Date.parse(it.strftime("%Y/%m/%d"))}
        dates = (a..b).to_a   
      else
        dates = d.flatten.map {|it|
          it.is_a?(Date) ? it : Date.parse(it.strftime("%Y/%m/%d"))}
      end
      
      find_ranges dates
      
      if options[:day]
        @ranges.map! {|it| range_by_wday(it,options[:day], options[:days]) }
        @ranges.flatten!
      end

      if options[:time]
        @ranges.map! {|it|
          Time.utc(it.first.year, it.first.mon, it.first.day)..Time.utc(it.last.year, it.last.mon, it.last.day) }
      end
    end 

    private

    def find_ranges(set)
      @ranges = set.uniq.sort.inject([]) do |result, it|
        result << [] unless result.last && result.last.last.next == it
        result.tap {|ar| ar.last << it }
      end.map {|it| it.first..it.last}
    end

    def range_by_wday(range,day,days)
      chunks = []
      range.each do |it| 
        next unless it.wday == day
        chunk = []
        days.times do |i| 
          d = it+i
          chunk << d if range.include?(d)
        end
        chunks << (chunk.first..chunk.last)
      end
      chunks
    end
  end # Range

  module ObjectExtensions
    def tap
      yield self; self
    end
  end

  Object.send :include, Blunt::ObjectExtensions
end # Blunt

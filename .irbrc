#!/usr/bin/ruby
require 'rubygems' if RUBY_VERSION < '1.9' || RUBY_DESCRIPTION =~ /rubinius/i
require 'irb/completion'
require 'irb/ext/save-history'
begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError
end

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

#IRB.conf[:PROMPT_MODE] = :SIMPLE

IRB.conf[:AUTO_INDENT] = true

#def time(times = 1)
#  require 'benchmark'
#  ret = nil
#  Benchmark.bm { |x| x.report { times.times { ret = yield } } }
#  ret
#end

class Object
  # list methods which aren't in superclass
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  def ls(obj = self)
    width = `stty size 2>/dev/null`.split(/\s+/, 2).last.to_i
    width = 80 if width == 0
    local_methods(obj).each_slice(3) do |meths|
      pattern = "%-#{width / 3}s" * meths.length
      puts pattern % meths
    end
  end

  # print documentation
  #
  # ri 'Array#pop'
  # Array.ri
  # Array.ri :pop
  # arr.ri :pop
  def ri(method = nil)
    unless method && method =~ /^[A-Z]/ # if class isn't specified
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    puts `ri '#{method}'`
  end
end

load File.dirname(__FILE__) + '/.railsrc' if $0 == 'irb' && ENV['RAILS_ENV']

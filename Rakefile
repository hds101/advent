require 'bundler/setup'
require 'benchmark'
Bundler.require :default

class Rake::Task
  def execute_with_benchmark(*args)
    bm = Benchmark.measure { execute_without_benchmark(*args) }
    puts "----- \n#{name} --> #{bm}"
  end

  alias_method :execute_without_benchmark, :execute
  alias_method :execute, :execute_with_benchmark
end

Dir.glob('tasks/*.rake').each { |rake| import rake }

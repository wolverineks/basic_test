require "basic_test/version"

module BasicTest
  extend self
  require 'stringio'
  require 'colorize'

  def test(string, expected, actual)
    puts string
    display_results(expected, actual)
  end

  def display_results(expected, actual)
    result = (expected == actual)
    if result
      puts "PASS"
    else
      puts "Expected: #{expected}".red
      puts "Actual:   #{actual}".red
      puts "FAIL".red
    end
    puts "----------------------------------"
  end

  def capture_stdout(&blk)
    old = $stdout
    $stdout = fake = StringIO.new
    blk.call
    fake.string
  ensure
    $stdout = old
  end

  def capture_stderr(&blk)
    old = $stderr
    $stderr = fake = StringIO.new
    blk.call
    fake.string
  ensure
    $stderr = old
  end

end

system "clear"

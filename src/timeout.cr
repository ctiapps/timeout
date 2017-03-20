require "./timeout/*"

module Timeout
  def self.timeout(terminate_after : Float64, &block)
    ch = Channel(Bool).new

    spawn do
      sleep terminate_after
      ch.close
    end

    spawn do
      block.call
      ch.send true
    end

    ch.receive rescue false
  end
end

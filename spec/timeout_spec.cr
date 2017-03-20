require "./spec_helper"

describe Timeout do
  it "Should return true for fully completed block call" do
    Timeout.timeout(0.2){ sleep 0.1 }.should eq(true)
  end

  it "Should return false in case if timeout occured in middle of  block execution" do
    Timeout.timeout(0.1){ sleep 0.2 }.should_not eq(true)
  end

end

require "bike"

describe Bike do
  it { is_expected.to respond_to :working?}

  it "should return false when not working" do
    subject.set_working = false
    expect(subject.working?).to eq false
  end
end

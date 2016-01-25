require 'oystercard'

describe Oystercard do
  subject(:oystercard) { described_class.new }

  describe '#initialize' do
    it 'initializes with a balance of 0' do
      expect(oystercard.balance).to eq(0)
    end
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'adds money to card balance' do
      oystercard.top_up 10
      expect(oystercard.balance).to eq 10
    end
  end
end

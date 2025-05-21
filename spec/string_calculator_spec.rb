# require 'rails_helper'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    it "returns 0 for empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "returns the number itself for single number input" do
      expect(calculator.add("4")).to eq(4)
    end
  end
end
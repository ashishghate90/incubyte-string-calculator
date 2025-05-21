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

    it "returns sum of two comma-separated numbers" do
      expect(calculator.add("1,5")).to eq(6)
    end

    it "returns sum of multiple comma-separated numbers" do
      expect(calculator.add("1,2,3,4")).to eq(10)
    end

    it "handles new lines between numbers" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end
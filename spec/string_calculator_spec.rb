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

    it "supports custom delimiter" do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it "raises error for negative numbers" do
      expect { calculator.add("1,-2,3,-5") }.to raise_error("negative numbers not allowed -2,-5")
    end
  end
end
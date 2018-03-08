require 'spec_helper'
describe StringCalculator do
  describe "getSum" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.getSum("")).to eql(0)
      end
    end
    context "given an -ve value" do
      it "returns error" do
        expect(StringCalculator.getSum("-22")).to eql("Rails Error: Negative number not allowed")
      end
    end
    context "given string of values 2,3**8" do
      it "returns 13" do
        expect(StringCalculator.getSum("2,3**8")).to eql(13)
      end
    end
    context "Should work with multi line character" do
      it "return 6" do
        expect(StringCalculator.getSum('2\n4')).to eql(6)
      end
    end
  end
end
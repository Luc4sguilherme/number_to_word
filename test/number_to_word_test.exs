defmodule NumberToWordTest do
  use ExUnit.Case, async: true

  describe "digits" do
    test "should convert 0 to word" do
      assert NumberToWord.convert(0) == "zero"
    end

    test "should convert 1 to word" do
      assert NumberToWord.convert(1) == "one"
    end

    test "should convert 2 to word" do
      assert NumberToWord.convert(2) == "two"
    end

    test "should convert 3 to word" do
      assert NumberToWord.convert(3) == "three"
    end

    test "should convert 4 to word" do
      assert NumberToWord.convert(4) == "four"
    end

    test "should convert 5 to word" do
      assert NumberToWord.convert(5) == "five"
    end

    test "should convert 6 to word" do
      assert NumberToWord.convert(6) == "six"
    end

    test "should convert 7 to word" do
      assert NumberToWord.convert(7) == "seven"
    end

    test "should convert 8 to word" do
      assert NumberToWord.convert(8) == "eight"
    end

    test "should convert 9 to word" do
      assert NumberToWord.convert(9) == "nine"
    end
  end

  describe "tens" do
    test "should convert 10 to word" do
      assert NumberToWord.convert(10) == "ten"
    end

    test "should convert 11 to word" do
      assert NumberToWord.convert(11) == "eleven"
    end

    test "should convert 12 to word" do
      assert NumberToWord.convert(12) == "twelve"
    end

    test "should convert 13 to word" do
      assert NumberToWord.convert(13) == "thirteen"
    end

    test "should convert 14 to word" do
      assert NumberToWord.convert(14) == "fourteen"
    end

    test "should convert 15 to word" do
      assert NumberToWord.convert(15) == "fifteen"
    end

    test "should convert 16 to word" do
      assert NumberToWord.convert(16) == "sixteen"
    end

    test "should convert 17 to word" do
      assert NumberToWord.convert(17) == "seventeen"
    end

    test "should convert 18 to word" do
      assert NumberToWord.convert(18) == "eighteen"
    end

    test "should convert 19 to word" do
      assert NumberToWord.convert(19) == "nineteen"
    end

    test "should convert 20 to word" do
      assert NumberToWord.convert(20) == "twenty"
    end

    test "should convert 30 to word" do
      assert NumberToWord.convert(30) == "thirty"
    end

    test "should convert 40 to word" do
      assert NumberToWord.convert(40) == "forty"
    end

    test "should convert 50 to word" do
      assert NumberToWord.convert(50) == "fifty"
    end

    test "should convert 60 to word" do
      assert NumberToWord.convert(60) == "sixty"
    end

    test "should convert 70 to word" do
      assert NumberToWord.convert(70) == "seventy"
    end

    test "should convert 80 to word" do
      assert NumberToWord.convert(80) == "eighty"
    end

    test "should convert 90 to word" do
      assert NumberToWord.convert(90) == "ninety"
    end
  end

  describe "powers of ten" do
    test "should convert 1e3 to word" do
      assert NumberToWord.convert(Integer.pow(10, 3)) == "one thousand"
    end

    test "should convert 1e6 to word" do
      assert NumberToWord.convert(Integer.pow(10, 6)) == "one million"
    end

    test "should convert 1e9 to word" do
      assert NumberToWord.convert(Integer.pow(10, 9)) == "one billion"
    end

    test "should convert 1e12 to word" do
      assert NumberToWord.convert(Integer.pow(10, 12)) == "one trillion"
    end

    test "should convert 1e15 to word" do
      assert NumberToWord.convert(Integer.pow(10, 15)) == "one quadrillion"
    end

    test "should convert 1e18 to word" do
      assert NumberToWord.convert(Integer.pow(10, 18)) == "one quintillion"
    end

    test "should convert 1e21 to word" do
      assert NumberToWord.convert(Integer.pow(10, 21)) == "one sextillion"
    end

    test "should convert 1e24 to word" do
      assert NumberToWord.convert(Integer.pow(10, 24)) == "one septillion"
    end

    test "should convert 1e27 to word" do
      assert NumberToWord.convert(Integer.pow(10, 27)) == "one octillion"
    end

    test "should convert 1e30 to word" do
      assert NumberToWord.convert(Integer.pow(10, 30)) == "one nonillion"
    end

    test "should convert 1e33 to word" do
      assert NumberToWord.convert(Integer.pow(10, 33)) == "one decillion"
    end

    test "should convert 1e36 to word" do
      assert NumberToWord.convert(Integer.pow(10, 36)) == "one undecillion"
    end
  end

  describe "others" do
    test "should convert 111 to word" do
      assert NumberToWord.convert(111) == "one hundred and eleven"
    end

    test "should convert 123 to word" do
      assert NumberToWord.convert(123) == "one hundred and twenty three"
    end

    test "should convert 1234 to word" do
      assert NumberToWord.convert(1234) == "one thousand, two hundred and thirty four"
    end

    test "should convert 12345 to word" do
      assert NumberToWord.convert(12345) == "twelve thousand, three hundred and forty five"
    end

    test "should convert 123456 to word" do
      assert NumberToWord.convert(123_456) ==
               "one hundred and twenty three thousand, four hundred and fifty six"
    end

    test "should convert 1234567 to word" do
      assert NumberToWord.convert(1_234_567) ==
               "one million, two hundred and thirty four thousand, five hundred and sixty seven"
    end

    test "should convert 12345678 to word" do
      assert NumberToWord.convert(12_345_678) ==
               "twelve million, three hundred and forty five thousand, six hundred and seventy eight"
    end

    test "should convert 123456789 to word" do
      assert NumberToWord.convert(123_456_789) ==
               "one hundred and twenty three million, four hundred and fifty six thousand, seven hundred and eighty nine"
    end

    test "should convert 987654321 to word" do
      assert NumberToWord.convert(987_654_321) ==
               "nine hundred and eighty seven million, six hundred and fifty four thousand, three hundred and twenty one"
    end

    test "should convert 1337 to word" do
      assert NumberToWord.convert(1337) == "one thousand, three hundred and thirty seven"
    end

    test "should convert 666 to word" do
      assert NumberToWord.convert(666) == "six hundred and sixty six"
    end

    test "should convert 121927412789157182758195443346767656 to word" do
      assert NumberToWord.convert(121_927_412_789_157_182_758_195_443_346_767_656) ==
               "one hundred and twenty one decillion, nine hundred and twenty seven nonillion, four hundred and twelve octillion, seven hundred and eighty nine septillion, one hundred and fifty seven sextillion, one hundred and eighty two quintillion, seven hundred and fifty eight quadrillion, one hundred and ninety five trillion, four hundred and forty three billion, three hundred and forty six million, seven hundred and sixty seven thousand, six hundred and fifty six"
    end

    test "should convert 12192741078915718275819544334677056 to word" do
      assert NumberToWord.convert(12_192_741_078_915_718_275_819_544_334_677_056) ==
               "twelve decillion, one hundred and ninety two nonillion, seven hundred and forty one octillion, seventy eight septillion, nine hundred and fifteen sextillion, seven hundred and eighteen quintillion, two hundred and seventy five quadrillion, eight hundred and nineteen trillion, five hundred and forty four billion, three hundred and thirty four million, six hundred and seventy seven thousand and fifty six"
    end
  end
end

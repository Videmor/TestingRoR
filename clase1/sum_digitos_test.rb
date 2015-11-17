require 'minitest/autorun'

def digito(num)
  numero = num ** 2
  numero.to_s.split(//).map(&:to_i).reduce(:+) == num
end

class DigitoTest < Minitest::Test

  def test_suma_digito
    assert digito(9)
    assert !digito(7)
  end

end

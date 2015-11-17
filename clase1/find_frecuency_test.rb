require 'minitest/autorun'

def find_frecuency(sentence, word)
  sentence.downcase.gsub('.', '').split(/ /).count(word.downcase)
end

class FrecuencyTest < Minitest::Test

  def test_frecuency_count

    assert_equal 2, find_frecuency('Ruby is The best language in the World', 'the')
    assert_equal 2, find_frecuency('Rails es un framework basado en ruby. Ruby es <3', 'ruby')
    assert_equal 3, find_frecuency('La comunidad de Ruby es muy grande, también es gente amable, y por último es chvere', 'es')
  end

end

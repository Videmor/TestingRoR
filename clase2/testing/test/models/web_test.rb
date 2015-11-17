require 'test_helper'

class WebTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    # @web = Web.create!(name: 'Wikipedia', url: 'http://www.wikipedia.com', description: 'o' * 11)
    @web = webs(:google)
  end

  test 'aumenta en 1 cuando se crea un nueva web' do
    assert_equal 2, Web.count
    web = Web.create(name: 'yahoo', url: 'http://yahoo.com', description: 'p' * 11)
    assert_equal 3, Web.count
  end

  test 'nombre correcto de una web' do
    google = Web.find_by(name: 'Google')

    assert_equal 'http://www.google.com', google.url
  end


  test 'nombre no debe ser vacio' do
    @web.name = ' '
    assert_not @web.valid?
  end

  test 'nombre debe tener maximo 15 caracteres' do
    @web.name = 'a' * 14
    assert @web.valid?
    @web.name = 'a' * 16
    assert_not @web.valid?
  end

  test 'url no debe ser vacio' do
    @web.url = ' '
    assert_not @web.valid?
  end

  test 'url debe ser único' do
    web_duplicate = @web.dup
    web_duplicate.url = 'http://WWW.GOOGLE.COM'
    assert_not web_duplicate.valid?
  end

  test 'description debe ser minimo 10 caracteres' do
    @web.description = 'a' * 9
    assert_not @web.valid?
    @web.description = 'c' * 50
    assert @web.valid?
  end

end

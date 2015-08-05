require('rspec')
require('scrabble')

describe('Hash#scrabble') do
  it('returns a scrabble score for a letter') do
      expect('A'.scrabble()).to(eq(1))
  end

  it('returns a scrabble score for a word') do
    expect('CACTUS'.scrabble()).to(eq(10))
  end

end

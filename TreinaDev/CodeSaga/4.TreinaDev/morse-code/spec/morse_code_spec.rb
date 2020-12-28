require 'spec_helper'

describe 'Codigo morse' do
  it 'deve traduzir .----/..---/...-- corretamente para 123' do
    result = MorseCode.new.traduzir('.----/..---/...--')
    expect(result).to eq('123')
  end

  it 'deve traduzir ....-/...../-.... corretamente para 456' do
    result = MorseCode.new.traduzir('....-/...../-....')
    expect(result).to eq('456')
  end

  it 'deve traduzir --.../---../----./----- corretamente para 7890' do
    result = MorseCode.new.traduzir('--.../---../----./-----')
    expect(result).to eq('7890')
  end

  it 'deve traduzir ..---/...../---.. corretamente para 258' do
    result = MorseCode.new.traduzir('..---/...../---..')
    expect(result).to eq('258')
  end

  it 'deve traduzir --.../....-/...-- corretamente para 743' do
    result = MorseCode.new.traduzir('--.../....-/...--')
    expect(result).to eq('743')
  end

  it 'deve traduzir -----/-..../----. corretamente para 069' do
    result = MorseCode.new.traduzir('-----/-..../----.')
    expect(result).to eq('069')
  end
end

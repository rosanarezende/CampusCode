require 'spec_helper'

describe MinMax do
  it 'recebe string de números e retorna Mínimo: 2; Máximo: 90' do
    expect(MinMax.new.find('4 6 2 90 3 12')).to eq 'Mínimo: 2; Máximo: 90'
  end

  it 'recebe string de números e retorna Mínimo: 3; Máximo: 524' do
    expect(MinMax.new.find('88 7 44 22 62 3 524')).to eq 'Mínimo: 3; Máximo: 524'
  end

  it 'recebe string de números e retorna Mínimo: -4; Máximo: 342' do
    expect(MinMax.new.find('21 342 -1 2 -4 24 45')).to eq 'Mínimo: -4; Máximo: 342'
  end

  it 'recebe string de números e retorna Mínimo: -1; Máximo: paralelo' do
    expect(MinMax.new.find('4 paralelo -1 2 banana olho 3')).to eq 'Mínimo: -1; Máximo: paralelo'
  end

  it 'recebe string de números e retorna Mínimo: um; Máximo: 223' do
    expect(MinMax.new.find('um dois 222 rails campus 223 84 200')).to eq 'Mínimo: um; Máximo: 223'
  end
end

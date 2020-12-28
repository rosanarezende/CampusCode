require 'spec_helper'

describe EnigmaCypher do
  it 'codifica CODESAGA para CZRHCARO' do
    expect(EnigmaCypher.new.encrypt('CODESAGA', 'ALODK')).to eq 'CZRHCARO'
  end

  it 'decodifica CZRHCARO para CODESAGA' do
    expect(EnigmaCypher.new.decrypt('CZRHCARO', 'ALODK')).to eq 'CODESAGA'
  end

  it 'codifica RUBYONRAILS para TJPBFFTPWOJ' do
    expect(EnigmaCypher.new.encrypt('RUBYONRAILS', 'CPODRS')).to eq 'TJPBFFTPWOJ'
  end

  it 'decodifica TJPBFFTPWOJ para RUBYONRAILS' do
    expect(EnigmaCypher.new.decrypt('TJPBFFTPWOJ', 'CPODRS')).to eq 'RUBYONRAILS'
  end
end

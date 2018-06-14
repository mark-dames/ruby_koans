class Complement
  RNA_COMPLEMENTS = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
  
  def self.of_dna(dna_strand)
    return '' if dna_strand.match(/[^GCTA]/)
    dna_strand.chars.map { |letter| RNA_COMPLEMENTS[letter] }.join
  end
end

module BookKeeping
  VERSION = 4 
end
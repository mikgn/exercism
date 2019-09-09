class Complement
  DNA_TO_RNA = { "G" => "C", "C" => "G", "T" => "A", "A" => "U" } 

  def self.of_dna(dna)
    dna.chars.map(&DNA_TO_RNA).join
  end
end



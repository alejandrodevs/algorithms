def sort(sequence)
  sequence.tap do
    (1...sequence.size).each do |i|
      element  = sequence[i]
      position = i - 1

      while position >= 0 && sequence[position] > element
        sequence[position + 1] = sequence[position]
        position -= 1
      end

      sequence[position + 1] = element
    end
  end
end

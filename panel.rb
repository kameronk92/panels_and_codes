def solution(panel, codes)
  # Validate input
  if !panel.is_a?(String) || !panel.match?(/^\d+$/)
      return "panel must be a string of digits"
  elsif !codes.is_a?(Array) || !codes.all? { |code| code.is_a?(String) && code.match?(/^\d+$/) }
      return "codes must be an array of strings of digits"
  end

  output = []

  # Iterate through each code
  codes.each do |code|
      
      # Generate all split cases for a code
      (1..code.length - 1).each do |i|
          index = code[0...i].to_i
          pattern = code[i..-1]

          # Check if the index is within bounds and the pattern matches
          if index < panel.length && panel[index, pattern.length] == pattern
              output << pattern
          else
              output << "not found" 
          end    
      end
  end

  output
end

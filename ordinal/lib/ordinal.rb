def ordinal number
  case number % 100
  when 11, 12, 13 
    return "#{number}th"
  else
    case number % 10
    when 1
      return "#{number}st"

    when 2
      return "#{number}nd"

    when 3
      return "#{number}rd"
    else
      return "#{number}th"
    end
  end
end

def roman_numeral num

    m = num / 1000
    m_rem = num % 1000

    d = m_rem / 500
    d_rem = m_rem % 500

    c = d_rem / 100
    c_rem = d_rem % 100

    l = c_rem / 50
    l_rem = c_rem % 50

    x = l_rem / 10
    x_rem = l_rem % 10

    v = x_rem / 5
    v_rem = x_rem % 5

    i = v_rem / 1

    thous = "M" * m

    if m_rem > 900
      fivehun = "CM"
    elsif m_rem > 399 && m_rem < 500
      fivehun = "CD"
    else 
      fivehun = "D" * d
    end

    if m_rem < 900 && m_rem > 500 || m_rem < 400
      huns = "C" * c
    end
    
    if c_rem > 89
      fifty = "XC"
    elsif c_rem > 39 && c_rem < 50
      fifty = "XL"
    elsif
      c_rem == 50
      fifty = "L"
    else
      fifty = ""
    end

    if c_rem < 90 && c_rem > 50 || c_rem < 40
      tens = "X" * x
    end
    
    if x_rem == 9
      fives = "I"
      ones = "X"
    elsif x_rem == 4
      fives = "I"
      ones = "V"
    else
      fives = "V" * v
      ones = "I" * i
    end
    


  "#{thous}" + "#{fivehun}" + "#{huns}" + "#{fifty}" + "#{tens}" + "#{fives}" + "#{ones}"

  end
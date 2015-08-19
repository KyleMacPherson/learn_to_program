class Integer

  def old_roman_numeral

    m = self / 1000
    m_rem = self % 1000
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

  "#{"M" * m}" + "#{"D" * d}" + "#{"C" * c}" + "#{"L" * l}" + "#{"X" * x}" + "#{"V" * v}" + "#{"I" * i}"

  end
  
  def factorial
    if self <0
      return "You cant't take the factorial of a minus number"
    end
    
    if self <= 1
      1
    else
      self * (self-1).factorial
    end

  end
end
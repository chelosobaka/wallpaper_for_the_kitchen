module ApplicationHelper
  def family(family_name)
    family = ""
    family_name.each_char.with_index do |letter, index|
      if index == 0 || index == family_name.size - 1
        family << letter
      else
        family << "*"
      end
    end
    family
  end
end

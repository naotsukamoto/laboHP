module UsersHelper

  def making_row(i,row)
    content_tag(:tr) if i%row==0
  end

  def making_col
    if @right_pic==true then
      concat(
        content_tag(:td) do
          concat image_tag("mem_"+@j.to_s, :size => '300x300')
        end
      )
      @j=@j.to_i+1
    else
      concat content_tag(:td, "name")
    end

  end

end

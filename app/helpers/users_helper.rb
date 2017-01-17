module UsersHelper

  # def making_row(i,row)
  #   content_tag(:tr) if i%row==0
  # end
  #
  # def making_col
  #   if @right_pic==true then
  #     concat(
  #       content_tag(:td) do
  #         concat image_tag("mem_"+@j.to_s, :size => '300x300')
  #       end
  #     )
  #     @j=@j.to_i+1
  #   else
  #     concat content_tag(:td, "name")
  #   end
  #
  # end

  def making_row
    content_tag(:tr)
  end

  # def making_col
  #   if @right_pic==true then
  #     concat(
  #       content_tag(:td) do
  #         concat image_tag(, :size => '300x300')
  #       end
  #     )
  #   else
  #     concat content_tag(:td, "name")
  #   end
  #
  # end

  def making_table(col)
    @isRight = false
    @user.each do |u|
      @isRight =! @isRight
      # Make row
      concat content_tag(:tr)
      # Make column
      col.times do |c|
        if @isRight == false
          if c==0
            concat(
              content_tag(:td) do
                concat image_tag(u.image.url, :size => '300x300')
              end
            )
          elsif c==1
            concat content_tag(:td, "profile")
          end
        elsif @isRight == true
          if c==0
            concat content_tag(:td, "profile")
          elsif c==1
            concat(
              content_tag(:td) do
                concat image_tag(u.image.url, :size => '300x300')
              end
            )
          end
        end
      end
    end
  end


end

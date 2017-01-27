module UsersHelper

  def making_table(col)
    @isRight = false
    @user.each do |u|
      @isRight =! @isRight
      # Make row
      concat content_tag(:tr)
      # Make column
      col.times do |c|
        if @isRight == false
          # Set image on left side
          if c==0
            concat(
              content_tag(:td, :class => 'img-box') do
                concat image_tag(u.image.url, :size => '300x300', :class => 'img-box')
              end
            )
          elsif c==1
            concat content_tag(:td, simple_format(h("Name: #{u.name} \n Born from: #{u.location} \n Comment: #{u.about} \n Category: #{u.category}" )))
          end
        elsif @isRight == true
          # Set image on right side
          if c==0
            concat content_tag(:td, simple_format(h("Name: #{u.name} \n Born from: #{u.location} \n Comment: #{u.about} \n Category: #{u.category}" )))
          elsif c==1
            concat(
              content_tag(:td, :class => 'img-box') do
                concat image_tag(u.image.url, :size => '300x300', :class => 'img-box')
              end
            )
          end
        end
      end
    end
  end


end

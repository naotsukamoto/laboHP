module ApplicationHelper

  @paths_size=0

  def page_title
    title = "Tohno Labo"
    title = @page_title + "-" + title if @page_title
    title
  end

  def menu_link_to(text, path)
    link_to_unless_current(text, path){ content_tag(:span, text)}
  end

  def get_path_name(num)
    # 現在地をパスで取得
    full_path = request.path_info
    @paths = full_path.split("/")
    paths_name = @paths
    # 先頭をrootにする
    paths_name[0]="Home"
    p paths_name[num]
  end

  def get_path(num)
    pre_path = @paths
    pre_path[0]=""
    p pre_path.slice(0,num+1).join("/")
  end

  def making_breadcrumb(i)
      content_tag(:li, menu_link_to(get_path_name(i), get_path(i)))
  end

end

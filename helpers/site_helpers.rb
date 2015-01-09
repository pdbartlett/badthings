module SiteHelpers
  def separated_optional(prefix, sep, opt)
    opt ? prefix + sep + opt : prefix
  end
  def nav_item(uri, title, glyph=nil)
    opts = (uri == '/' + current_page.request_path) ? {:class=>'active'} : {}
    content_tag :li, opts do
      content_tag :a, :href=>uri do
        glyph ? tag(:span, :class=>'glyphicon glyphicon-'+glyph) + ' ' + title : title
      end
    end
  end
end
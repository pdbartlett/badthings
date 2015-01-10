module SiteHelpers
  FWS="\u2005" # Fixed width space (1/4 em) as glyph font has wide spaces.
  
  # If the suffix is present append it following a separator.
  def separated_optional(prefix, sep, opt)
    opt ? prefix + sep + opt : prefix
  end
  
  # Generates an item in the Bootstrap nav bar.
  def nav_item(uri, title, glyph=nil)
    title.sub! ' ', FWS
    opts = (uri == '/' + current_page.request_path) ? {:class=>'active'} : {}
    content_tag :li, opts do
      content_tag :a, :href=>uri do
        glyph ? tag(:span, :class=>'glyphicon glyphicon-'+glyph) + FWS + title : title
      end
    end
  end
end
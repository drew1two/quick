module ApplicationHelper
  def logo
    logo = image_tag("logo.png", alt: "Quick Score", class: "round")
    logo
  end
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Quick-Score.com"
    if page_title.empty?
      base_title
    else
      "#{page_title} @ #{base_title}"
    end
  end

end

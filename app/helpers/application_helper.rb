module ApplicationHelper
  def background_default_status(obj)
    "<span class=\"badge badge-#{(obj.status == "active") ? "success" : "danger"}\">
      #{(obj.status == "active") ? t(".active") : t(".disable")}
    </span>".html_safe
  end
end

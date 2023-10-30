class UserDecorator < ApplicationDecorator
  delegate_all

  def decorate_status
    "<span class=\"badge badge-#{(object.status == "active") ? "success" : "danger"}\">
      #{(object.status == "active") ? I18n.t("users.active") : I18n.t("users.inactive")}
    </span>".html_safe
  end
end

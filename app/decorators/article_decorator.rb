class ArticleDecorator < ApplicationDecorator
  def decorate_status
    "<span class=\"badge badge-#{(object.status == "active") ? "success" : "danger"}\">
      #{(object.status == "active") ? I18n.t("articles.active") : I18n.t("articles.disable")}
    </span>".html_safe
  end

  def decorate_content_compact
    strip_tags(object.content&.gsub(/[\[\]"]/, ''))&.truncate(50, omission: '..', escape: false)
  end
end

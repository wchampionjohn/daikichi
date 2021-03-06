# frozen_string_literal: true
module MetaDataHelper
  def page_title(append_app_title = false)
    title = t(page_title_translation_key, raise: true)
    append_app_title ? "#{title} | #{t('misc.app_title')}" : title
  rescue
    t("misc.app_title")
  end

  def page_title_translation_key
    :"title.#{controller_path}.#{action_name}"
  end
end

module ApplicationHelper

  def site_name
    A9n.site_name
  end

  def copyright
    I18n.t(:copyright, scope: 'footer', year: Date.today.year).html_safe
  end

  def facebook_url
    A9n.facebook_url
  end

  def twitter_url
    A9n.twitter_url
  end

  def linkedin_url
    A9n.linkedin_url
  end

  def gravatar_url
    A9n.gravatar_url
  end
end

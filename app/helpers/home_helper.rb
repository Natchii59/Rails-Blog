module HomeHelper

  def gravatar(email, options = { size: 200, class: "" })
    throw TypeError unless email.respond_to? :to_s
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email.to_s)}?s=#{options[:size]}", { alt: "pfp", class: options[:class] }
  end

end

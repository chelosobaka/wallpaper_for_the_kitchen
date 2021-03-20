module UsersHelper
  def current_locale_dropdown(locale)
    case locale
    when :ru
      "#{image_tag('russia.svg', class: 'icon')}
      <div class='label'>Russian</div>".html_safe
    when :en
      "#{image_tag('england.svg', class: 'icon')}
      <div class='label'>English</div>".html_safe
    when :cn
      "#{image_tag('china.svg', class: 'icon')}
      <div class='label'>Chinese</div>".html_safe
    when :es
      "#{image_tag('spain.svg', class: 'icon')}
      <div class='label'>Spanish</div>".html_safe
    when :it
      "#{image_tag('italy.svg', class: 'icon')}
      <div class='label'>Italian</div>".html_safe
    when :de
      "#{image_tag('germany.svg', class: 'icon')}
      <div class='label'>German</div>".html_safe
    when :fr
      "#{image_tag('france.svg', class: 'icon')}
      <div class='label'>French</div>".html_safe
    when :pt
      "#{image_tag('portugal.svg', class: 'icon')}
      <div class='label'>Portuguese</div>".html_safe
    when :tr
      "#{image_tag('turkey.svg', class: 'icon')}
      <div class='label'>Turkish</div>".html_safe
    when :ae
      "#{image_tag('united-arab-emirates.svg', class: 'icon')}
      <div class='label'>Arabic</div>".html_safe
    when :jp
      "#{image_tag('japan.svg', class: 'icon')}
      <div class='label'>Japanese</div>".html_safe
    when :fi
      "#{image_tag('finland.svg', class: 'icon')}
      <div class='label'>Finnish</div>".html_safe
    when :kr
     "#{image_tag('south-korea.svg', class: 'icon')}
      <div class='label'>Korean</div>".html_safe
    when :uz
      "#{image_tag('uzbekistan.svg', class: 'icon')}
      <div class='label'>Uzbek</div>".html_safe
    when :kg
      "#{image_tag('kyrgyzstan.svg', class: 'icon')}
      <div class='label'>Kyrgyz</div>".html_safe
    when :tj
      "#{image_tag('tajikistan.svg', class: 'icon')}
      <div class='label'>Tajik</div>".html_safe
    end
  end

  def format_date(date, locale)
    if locale == :ru
      date.strftime('%d.%m.%Y')
    else
      date.strftime('%Y.%m.%d')
    end
  end

end

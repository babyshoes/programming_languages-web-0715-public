def reformat_languages(languages)
  hash = {}
  languages.each do |language_style, data|
    data.each do |language, data_about_language|
      hash[language] = {type: "#{data_about_language[:type]}", style: []} unless hash.include? language
      hash[language][:style] << language_style
    end
  end
  hash
end

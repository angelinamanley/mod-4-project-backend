require "google/cloud/translate"


def translate_string(string, language)

  translator = Google::Cloud::Translate.new(
    project_id: "affable-elf-256312",
    credentials: "./jsoncredentials.json"
  )
  translation = translator.translate(string, to: language)
  return translation
end




require "google/cloud/translate"


def translate_string(string, language)

  translator = Google::Cloud::Translate.new(
    project_id: "affable-elf-256312",
    credentials: {
      "type": "service_account",
      "project_id": "affable-elf-256312",
      "private_key_id": "0087412627b2e8b86d991882547fa4780330deda",
      "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCI22QzwFcbMCEd\nJ0nPrnGmJwOmGKlyCNJvfJt5N+iV85OnAf/JdLrmq94txYTJmCxJDng7n4L5NS/L\nb5FBzfq7ZfTwED8fPJwoChtFNbJ3bSh4htSiiAj+1+ipWjwuLylQQYqQbClNzjBH\n+ztrma7SG+dSRYKTU3XNrOt3TRQ8dNLJPNI5Ud7zCUuIzHfP+8MYR9CiFyRuO+Zm\nxO4eQ9sV+ksmizCYinRnfX2cKWJZ3O1uUulM+AL9L6aTtizUNvKrX8FcEShP0rYk\nhlvRw7bDmVLBZsklbwBZeLPZ8dix5CJj0CJuYTHpE7d0vbAghDKOndep9cKMKKD9\nw/iu2BEXAgMBAAECggEAMG8AV8ZOrXsLhQ9F8n9ojiZJhss8kHRp0PXW6f/sysDA\ntP6ioQ+0I3WYtDcuZs/5gENkLqmlhv+ZMhSCYjj87rxHAnylci8Xjp4BB63YwqY5\nh+ojr3+YO2R63RBnsuqS4unHGZSFy5jYgmj5nvttIMOqSnX6H5yOWONFE9wN+NTU\n0cnjRf7VLfUaxsMFEODHGl9j9RYs4MYsO3g7mZ6E0cRwhmCtxsckQ5hhkyu2tiZT\njfjgGp+jeD9E3S9uhn8DX7LpvFPptrRu9qvxOlqniUVtPai8Th5nteLGONKutga/\n+8ZrgaFGkJ1BqlfWrGGM5BNfn1UzYcflj7nd134zAQKBgQC+HXEez9W5dqCcH2t2\nlnkWvr2J9x8XlpqVc2r0R9XPki6xaKaAlmVjpdeCAQ59Htatt0P8sRo9mWXmnc0X\ntHmVkvTI+nZ+UDikMOmMR8Wv/vXKj/KpEffeGteFvbvjZGhZrfI31o2gYIyGImiH\ncOSD8EK/B5KuJLlGQ8oSlKxsFwKBgQC4SQYPstFCwSGZw03mkIQPBL0P0ogbgwVj\naMwTesLw8E7xyPY1PlEo/KBE3gGSLgnM/LpuRz55yggzAA5nXDg8QZn1OjWb7JrD\nfWaxz8MZGMooaeZoo391PnbWuuvOskpGXg75rOTg92h0mDNRSnTWNX73VlLTEqWS\nnSb/ZA+jAQKBgBm3X9LcKDvjKQyVT3MGHbEO8hKUg/cr3xMyPph2kxx12K0Uy9j+\n/w4Ao+so+22/Wyi6bo7i4frNIjSUyeZX+k5aR5RcFOU3MsI6/4yDNOF+qn7RA/EM\nxiucE+U6agzzSw4+clJNSnEUPk3yn5MamT6jpFO00YmO3CT+DHqA8+XXAoGBAKc9\n/jY4/hgq1aeJyyS3emF2122IjuUI3tb8wFfdTRUDwWFEE8z2JQmhWoGlSJ+1EEfs\nA/UYyuYUJ6TBJFFBK/fjQSmADi7XZwyKvawY9OHN0Ykjsmq8Fmv8qDTvphkLTMTX\nj5efBIf1f+JwTgI0JBxSqEsnGDtd7M1FuaKE2HwBAoGAIBhskRrSjvewmhyKsCEj\n+dxqlWYg2ii40hS6TzNB46gvSivR4n3/8A4bg8P3g25fkZHba+I+ypSPdSBrsbcZ\npLVio1qzUkD7OCsQ3/tNblbFbOj2Q5HKZnOjh3cHBACrJxl/12+NyFBY7RQmDAVI\nvvyMaxMmRh+zX05CxMkGi30=\n-----END PRIVATE KEY-----\n",
      "client_email": "transchat@affable-elf-256312.iam.gserviceaccount.com",
      "client_id": "111645057596595838926",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://oauth2.googleapis.com/token",
      "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/transchat%40affable-elf-256312.iam.gserviceaccount.com"
    }
  )
  translation = translator.translate(string, to: "en")
  return translation
end




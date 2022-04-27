---
# An instance of the Contact widget.
widget: contact

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 130

# Email form provider
#   0: Disable email form
#   1: Netlify (requires that the site is hosted by Netlify)
#   2: formspree.io
#email_form = 0

title: "Contato"
subtitle: ""

content:
  # Automatically link email and phone or display as text?
  autolink: true

  # Email form provider
  form:
    provider: #netlify
    formspree:
      id:
    netlify:
      # Enable CAPTCHA challenge to reduce spam?
      captcha: false

  # Contact details (edit or remove options as required)
  email: rodrigo.lira@paulista.ifpe.edu.br
  phone:
  address:
    street: Av. Geraldo Pinho Alves, 1400, Maranguape I
    city: Paulista
    region: PE
    postcode: '53441-600'
    country: Brasil
    country_code: BR
  coordinates:
    latitude: '-7.9456144868738'
    longitude: '-34.85870127370756'
  #directions: Enter Building 1 and take the stairs to Office 200 on Floor 2
  #office_hours:
  #  - 'Monday 10:00 to 13:00'
  #  - 'Wednesday 09:00 to 10:00'
  #appointment_url: 'https://calendly.com'
#  contact_links:
#    - icon: twitter
#      icon_pack: fab
#      name: DM Me
#      link: 'https://twitter.com/rodrigoclira'
#    - icon: video
#      icon_pack: fas
#      name: Zoom Me
#      link: 'https://zoom.com'

design:
  columns: '2'
---

![IFPE Campus Paulista](ifpe-paulista.png "IFPE Campus Paulista")


---
layout: page
title: "Subscription"
description: "LA Referencia newsletter"
language: en
language_reference: subscription
published: true
menu_parent: resources
menu_order: 30
menu_label: "Subscription"
menu_icon: "docs"
---

{% include mailchimp-form.html
  form_title="Subscribe to our Newsletter"
  form_subtitle="Subscribe to our newsletter and stay updated on our efforts for Open Science."
  required_text="indicates required"
  email_label="Email Address"
  name_label="Full Name"
  country_label="Country"
  org_label="Organization"
  button_text="Subscribe"
  msg_required="This field is required."
  msg_email="Please enter a valid email address"
%}

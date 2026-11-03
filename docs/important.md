For future page migrations, follow this pattern:

Front matter:

yaml
---
layout: content-detail
title: "Page Title"
subtitle: "Optional subtitle"
author: "Author Name"
tag: "TAG NAME"
tag_color: "#hexcolor"
accent_color: "#hexcolor"
accent_soft: "#hexcolor"
context_note: "Optional context text"
custom_css: "_work/css/filename.css"
permalink: /work/slug/
---
Body content:

Wrap ALL complex nested HTML in {::nomarkdown}...{:/nomarkdown}:
.stat-row, .stat
.circuit-grid, .circuit-card
.callout, .callout.twist
.figure, .placeholder, figcaption
.glossary, .term
.stage-header, .stage-tag, .stage-time
.prompt-box, .tag
.aside, .aside-label
Simple paragraphs, headings, lists, and inline formatting don't need wrapping
This ensures kramdown doesn't mangle the HTML structure that CSS depends on.
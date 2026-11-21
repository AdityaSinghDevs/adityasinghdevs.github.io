---
title: "Work"
layout: default
sitemap: false
permalink: /work/
---

{::nomarkdown}
<div class="work-feed">
  {% for entry in site.data.work %}
  {% include content-card.html entry=entry %}
  {% endfor %}
</div>
{:/nomarkdown}

<style>
.container-fluid {
  max-width: 100% !important;
  padding: 0 !important;
}

.row {
  margin: 0 !important;
}

.work-feed {
  max-width: 1150px;
  margin: 0 auto;
  padding: 40px 20px;
}

.content-card {
  display: flex;
  align-items: center;
  gap: 40px;
  padding: 32px 0;
  border-bottom: 1px solid #d0d0d0;
}

.content-card:last-child {
  border-bottom: none;
}

.content-card-body {
  flex: 0 0 58%;
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.content-card-tag {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  font-size: 0.75rem;
  font-weight: 600;
  padding: 4px 12px;
  border-radius: 3px;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  white-space: normal;
  text-align: center;
  line-height: 1.3;
  min-height: 28px;
  width: fit-content;
}

.content-card-title {
  font-size: 1.5rem;
  font-weight: 700;
  line-height: 1.3;
  margin-bottom: 6px;
}

.content-card-title a {
  color: #000;
  text-decoration: none;
  transition: color 0.2s ease;
}

.content-card-title a:hover {
  color: #495057;
}

.content-card-date {
  font-size: 1rem;
  color: #6c757d;
  font-family: 'Alegreya', Georgia, 'Times New Roman', serif;
}

.content-card-description {
  font-size: 1.15rem;
  line-height: 1.6;
  color: #495057;
  margin-bottom: 0;
  font-family: 'Alegreya', Georgia, 'Times New Roman', serif;
}

.content-card-image {
  flex: 0 0 42%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.content-card-image img {
  max-width: 100%;
  height: auto;
  border-radius: 8px;
  max-height: 350px;
  width: auto;
  transform: scale(1.1);
}

@media (max-width: 768px) {
  .content-card {
    flex-direction: column;
    align-items: flex-start;
    gap: 20px;
  }
  
  .content-card-body {
    flex: 1;
    width: 100%;
  }
  
  .content-card-image {
    flex: 1;
    width: 100%;
  }
}
</style>

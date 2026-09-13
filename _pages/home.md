---
layout: default
title: Aditya Pratap Singh | AI Engineer & Researcher
description: Research-oriented AI engineering undergraduate working on LLM systems, RAG, compression, and production-grade ML pipelines.
sitemap: false
permalink: /
---

<div class="home-page">
<!-- ### Sup! - You found me. -->
<!-- <h2 style="font-family: 'Inter', sans-serif; font-weight: 800; font-size: 2.6em;">Sup – You found me.</h2>
<h2 style="font-family: 'Space Grotesk', sans-serif; font-weight: 700; font-size: 2.5em; letter-spacing: -0.5px;">Sup – You found me.</h2>
<h2 style="font-family: 'IBM Plex Sans', sans-serif; font-weight: 700; font-size: 2.4em;">Sup – You found me.</h2> -->
<!-- <h2 style="font-family: 'Geist', sans-serif; font-weight: 600; font-size: 2.5em; color: #222;">Sup! – You found me.</h2> -->




<!-- Theoretical physics is a branch of physics that focuses on the development of mathematical models and theories to understand and explain natural phenomena.
It plays a crucial role in our understanding of the fundamental laws of the universe and the fundamental particles that make up all matter.
Research in theoretical physics helps us to make predictions about how the universe works and to test these predictions through experiments.
It also helps us to understand the fundamental principles that govern the behavior of matter and energy, and to explore the limits of our current knowledge.
Theoretical physics helps us to make progress in a wide range of fields, including cosmology, particle physics, and quantum mechanics, and it has led to many important discoveries and technological innovations. -->

<div class="row">
<div class="col-md-6 col-sm-12">
<h1 class="home-intro-title">Hi there, I'm Aditya.</h1>

<p>I study how LLMs and transformers work, not the ones from the movies, unfortunately. The other kind!</p>

<p> What's actually wired together under there, how information moves through it, how it can be nudged into behaving differently, and the math underneath all of it that the marketing conveniently skips.</p>


<p>My interest sits squarely in the field of mechanistic interpretability, simply said: less "does the model perform well," more "what is it actually doing in there, and can I catch it in the act."

<!-- So far that's meant building things from scratch when I can — a transformer, tokenizer to training loop, no wrappers to hide behind — mostly because I don't fully trust an abstraction I haven't taken apart with my own hands. From there I've been mapping attention heads into circuits, tracing how representations evolve layer by layer, and generally trying to turn "the model just does that" into an actual explanation. -->

</p>



<!-- <p>Where I want to take it next is less comfortable, in a good way: the question of identity — what it might mean for a model to represent something like a self, a persona, a consistent "I" across contexts, and whether that has any real analogue to how identity shows up in biological neural systems. I don't think that question has a clean answer yet. That's exactly why I want to be one of the people poking at it.</p> -->


<!-- <p>I don't think this field is a hype cycle passing through. I think it's the most interesting problem currently on offer, and one of the few where genuinely understanding a system might matter as much as making it powerful. My bet is that mechanistic interpretability isn't just an academic curiosity sitting off to the side of "real" AI progress — it's one of the more direct paths to AI that's not just capable but trustworthy: systems we can actually audit, catch when they're quietly doing something we didn't intend, and build stronger foundations on top of, instead of stacking capability on top of a black box and hoping. That's the version of this field I want to spend my time in, and the kind of finding I'd eventually like to leave behind — something worth citing, once I've actually earned it.</p> -->

<p>Away from a terminal, it's usually music on loop, an ongoing and only mildly one-sided appreciation for art, and philosophical rabbit holes I have no business going down.</p>

<p>This site is the paper trail. The parts that worked, the parts that spectacularly didn't, and the slow, unglamorous middle where most of the actual learning happens. Projects, write-ups, papers, half-formed ideas that eventually became something. Read in order or don't; either way, it's all still here.</p>

<h5 style="font-family: 'Alegreya', Georgia, 'Times New Roman', serif; font-weight: 700; font-size: 1.5em; color: #222;">
  <i>Machines converge. But humans? They transcend.</i>
</h5>

</div>
<!-- ACCIDENTALLY COMMENTED OUT: Profile photo and social icons section -->
<div class="col-md-6 col-sm-12">
{% for member in site.data.pi %}
<div class="jumbotron">
   <center>
   <a href="{{site.url}}{{site.baseurl}}/about"><img class="profile-photo" src="{{ '/images/' | append: member.photo | relative_url }}" style="width: {{ member.width | default: 60 }}%; max-width: 250px; object-fit: {{ member.fit | default: 'cover' }}; object-position: {{ member.position_x | default: 50 }}% {{ member.position_y | default: 50 }}%; display: block; margin: 0 auto;" alt="Aditya Pratap Singh – AI engineering undergraduate focused on LLM systems"/></a>
   <h4 style="font-weight: bold; margin-top: 15px;">{{ member.name }}</h4>
   <div style="width: 60px; height: 1px; background-color: #000; margin: 12px auto;"></div>
   <div class="social-icons" style="margin-top: 12px; display: flex; justify-content: center; align-items: center; gap: 15px;">
     {% if member.linkedin %}<a href="{{ member.linkedin }}" target="_blank" aria-label="LinkedIn" style="color: #000000; text-decoration: none; display: inline-flex; align-items: center; line-height: 1;"><i class="fa fa-linkedin fa-2x"></i></a>{% endif %}
     {% if member.x %}<a href="{{ member.x }}" target="_blank" aria-label="X" style="color: #000000; text-decoration: none; display: inline-flex; align-items: center; line-height: 1;"><svg width="32" height="32" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" style="vertical-align: middle;"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"/></svg></a>{% endif %}
     {% if member.github %}<a href="{{ member.github }}" target="_blank" aria-label="GitHub" style="color: #333333; text-decoration: none; display: inline-flex; align-items: center; line-height: 1;"><i class="fa fa-github fa-2x"></i></a>{% endif %}
   </div>
   <div style="margin-top: 20px; padding: 0 10px; text-align: center;">
      <p style="color: #6c757d; font-size: 0.8rem; line-height: 2.0; margin: 1;">
        <strong style="color: #495057; font-size: 1.5rem;">Current focus</strong><br>
       Mechanistic Interpretability
        • Attention & Circuit Analysis<br>
        • Activation Steering and Eval awareness<br>
        • Applied ML Systems Rigorous, Reproducible Experimentation
      </p>
   </div>
   </center>
</div>
{% endfor %}
</div>
</div>




<div style="width: 100%; height: 1px; background-color: #e0e0e0; margin: 20px 0;"></div>

<p style="font-size: 0.85rem; font-style: italic; color: #6c757d; margin-bottom: 20px;">Below are selected systems and research-oriented projects that reflect my current technical focus.</p>

## Selected Projects

<div class="jumbotron project-card clickable-project" data-project="tesseract" style="margin-top: 30px; margin-bottom: 30px; padding: 20px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05); transition: background-color 0.4s ease; cursor: pointer;">
<div class="row">
<div class="col-md-3 col-sm-12" style="margin-bottom: 15px;">
<img src="{{ '/images/tesseract.gif' | relative_url }}" style="width: 100%; height: 150px; object-fit: cover; border-radius: 6px;" alt="Text-to-3D mesh generation using diffusion models – Tesseract v1" loop>
</div>
<div class="col-md-9 col-sm-12">
<h5 style="font-weight: bold; margin-bottom: 8px; color: #222;">Tesseract v1 — Text-to-3D Mesh Generation Engine</h5>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 12px;">August,2025</p>
<ul style="padding-left: 20px; margin-bottom: 0; font-size: 0.75rem; line-height: 1.6;">
<li>Built a diffusion-based system for text-to-3D mesh generation with a reproducible, production-oriented inference pipeline.</li>
<li>Focused on system design: stateless execution, device-aware fallback, modular components, and config-driven experimentation.</li>
</ul>
</div>
</div>
</div>

<div class="jumbotron project-card clickable-project" data-project="reddit-persona" style="margin-top: 30px; margin-bottom: 30px; padding: 20px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05); transition: background-color 0.4s ease; cursor: pointer;">
<div class="row">
<div class="col-md-3 col-sm-12" style="margin-bottom: 15px;">
<img src="{{ '/images/reddit.png' | relative_url }}" style="width: 100%; height: 150px; object-fit: cover; border-radius: 6px;" alt="LLM-based Reddit user persona generation system – Reddit-Persona">
</div>
<div class="col-md-9 col-sm-12">
<h5 style="font-weight: bold; margin-bottom: 8px; color: #222;">Reddit-Persona — LLM-based User Persona Generation</h5>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 12px;">July,2025</p>
<ul style="padding-left: 20px; margin-bottom: 0; font-size: 0.75rem; line-height: 1.6;">
<li>Developed a production-grade LLM system to analyze Reddit user activity and generate structured, UX-oriented personas.</li>
<li>Implemented chunked inference, modular configuration, and dual interfaces (CLI and Streamlit) to balance cost, scalability, and usability.</li>
</ul>
</div>
</div>
</div>

<div class="jumbotron project-card clickable-project" data-project="mimir" style="margin-top: 30px; margin-bottom: 30px; padding: 20px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05); transition: background-color 0.4s ease; cursor: pointer;">
<div class="row">
<div class="col-md-3 col-sm-12" style="margin-bottom: 15px;">
<img src="{{ '/images/mimir.png' | relative_url }}" style="width: 100%; height: 150px; object-fit: cover; border-radius: 6px;" alt="Research-oriented LLM system for DevOps incident reasoning – MÍMIR">
</div>
<div class="col-md-9 col-sm-12">
<h5 style="font-weight: bold; margin-bottom: 8px; color: #222;">MÍMIR — Research-Oriented LLM System (Early Stage)</h5>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 12px;">2025 – Present</p>
<ul style="padding-left: 20px; margin-bottom: 0; font-size: 0.75rem; line-height: 1.6;">
<li>Designing a research-oriented LLM system to study retrieval-augmented reasoning and parameter-efficient adaptation under realistic system constraints.</li>
<li>Emphasizes reproducible evaluation and system-level trade-offs relevant to long-running ML services, rather than application-level demos.</li>
</ul>
</div>
</div>
</div>

<div style="text-align: center; margin-top: 40px; margin-bottom: 30px;">
  <a href="{{ site.url }}{{ site.baseurl }}/projects/" style="text-decoration: none; color: #000; font-family: 'Geist', sans-serif; font-weight: 500; font-size: 1.1rem;">See all</a>
  <div style="width: 60px; height: 1px; background-color: #000; margin: 8px auto;"></div>
</div>

<div style="width: 100%; height: 1px; background-color: #e0e0e0; margin: 40px 0;"></div>

## Ongoing Work

<div class="jumbotron project-card" style="margin-top: 30px; margin-bottom: 30px; padding: 20px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05); transition: background-color 0.4s ease;">
<div class="row">
<div class="col-md-12">
<h5 style="font-weight: bold; margin-bottom: 8px; color: #222;"><span style="color: #007bff; font-size: 1.2rem; margin-right: 8px;">●</span>LLM Compression & Interpretability(paper in preparation)</h5>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 12px;">Manuscript in preparation</p>
<p style="font-size: 0.85rem; line-height: 1.6; color: #444;">Studying how parameter-efficient fine-tuning and compression techniques (LoRA, quantization, pruning) alter internal representations and attention dynamics in transformer models.</p>
</div>
</div>
</div>

<div class="jumbotron project-card" style="margin-top: 30px; margin-bottom: 30px; padding: 20px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05); transition: background-color 0.4s ease;">
<div class="row">
<div class="col-md-12">
<h5 style="font-weight: bold; margin-bottom: 8px; color: #222;"><span style="color: #6f42c1; font-size: 1.2rem; margin-right: 8px;">●</span>MÍMIR — Cognitive DevOPS Diagnostic LLM System(Early Stage)</h5>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 12px;">Active development</p>
<p style="font-size: 0.85rem; line-height: 1.6; color: #444;">A research-oriented, production-grade LLM system for DevOps and SRE incident reasoning, emphasizing retrieval grounding, structured reasoning, and reproducible evaluation.</p>
</div>
</div>
</div>

<div style="width: 100%; height: 1px; background-color: #e0e0e0; margin: 40px 0;"></div>

## Leadership & Community

<div class="jumbotron" style="margin-top: 30px; margin-bottom: 30px; padding: 30px; border: 1px solid #e8d5f2; border-radius: 8px; background-color: #f8f4fb; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
<div class="row">
<div class="col-md-4">
<h5 style="font-weight: bold; margin-bottom: 8px; color: #222; font-size: 1.1rem;">President,</h5>
<h4 style="font-weight: 700; margin-bottom: 8px; color: #222; font-size: 1.4rem;">Advait</h4>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 8px;">September,2025 - Present</p>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 0;">Member Count : 300 +</p>
</div>
<div class="col-md-8">
<p style="font-size: 0.9rem; line-height: 1.7; color: #444; margin-bottom: 15px;">I lead Advait, a 300+ member student-led AI community focused on research-oriented machine learning, systems engineering, and applied AI development.</p>

<p style="font-size: 0.9rem; line-height: 1.7; color: #444; margin-bottom: 15px;"><strong>My role spans both technical leadership and organizational execution, including:</strong></p>

<ul style="padding-left: 20px; margin-bottom: 15px; font-size: 0.85rem; line-height: 1.7; color: #444;">
<li>Designing and driving research, engineering, and project-based initiatives across LLMs, computer vision, and ML systems.</li>
<li>Organizing technical talks, workshops, and internal study groups, ranging from neural networks fundamentals to production-grade ML practices.</li>
<li>Mentoring teams on end-to-end system building, emphasizing reproducibility, modular design, and real-world constraints.</li>
<li>Coordinating cross-functional operations: event management, speaker outreach, sponsorship communication, public relations, and community growth.</li>
<li>Overseeing technical direction, team structure, and execution quality, while managing social media presence and external communications.</li>
</ul>

<p style="font-size: 0.9rem; line-height: 1.7; color: #444; margin-bottom: 0;">Advait serves as a platform for translating academic curiosity into disciplined engineering practice, and for cultivating a culture centered on rigor, collaboration, and long-term skill development rather than short-term hype.</p>
</div>
</div>
</div>
</div> <!-- Close home-page div -->

<style>
.clickable-project:hover {
  background-color: #f0f0f0 !important;
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.clickable-project {
  transition: all 0.3s ease;
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const clickableProjects = document.querySelectorAll('.clickable-project');
  
  clickableProjects.forEach(card => {
    card.addEventListener('click', function() {
      const projectId = this.getAttribute('data-project');
      const projectsUrl = '{{ site.url }}{{ site.baseurl }}/projects/';
      window.location.href = `${projectsUrl}?project=${projectId}`;
    });
  });
});
</script>

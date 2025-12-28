---
layout: default
title: Projects | Aditya Pratap Singh
description: Complete portfolio of AI engineering projects including LLM systems, text-to-3D generation, user persona analysis, and research-oriented ML systems.
sitemap: true
permalink: /projects/
---

<div class="jumbotron" style="margin-top: 30px; margin-bottom: 50px; padding: 40px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
<div class="row">
<div class="col-md-12">
<h1 style="font-weight: 700; font-size: 2.5rem; color: #222; margin-bottom: 20px;">Projects</h1>
<p style="font-size: 1.1rem; line-height: 1.7; color: #444; margin-bottom: 0;">A comprehensive portfolio of my work in AI engineering, spanning production-grade systems, research implementations, and applied machine learning solutions.</p>
</div>
</div>
</div>

<!-- Project 1: Tesseract -->
<div class="jumbotron" style="margin-top: 30px; margin-bottom: 30px; padding: 30px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
<div class="row">
<div class="col-md-4">
<img src="{{ '/images/tesseract.gif' | relative_url }}" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px; margin-bottom: 15px;" alt="Text-to-3D mesh generation using diffusion models – Tesseract v1">
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 10px; text-align: center;">August 2025</p>
<p style="font-size: 0.95rem; font-style: italic; color: #555; text-align: center; margin-bottom: 0;">Text-to-3D mesh generation using diffusion models</p>
</div>
<div class="col-md-8">
<h3 style="font-weight: 700; font-size: 1.6rem; color: #222; margin-bottom: 15px;">Tesseract v1 — Text-to-3D Mesh Generation Engine</h3>
<div style="margin-bottom: 20px;">
<p style="font-size: 1rem; line-height: 1.6; color: #444; margin-bottom: 15px;">Built a diffusion-based system for text-to-3D mesh generation with a reproducible, production-oriented inference pipeline. This project demonstrates advanced understanding of generative models and system design principles.</p>
</div>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Key Features & Implementation:</h5>
<ul style="padding-left: 25px; margin-bottom: 20px; font-size: 0.95rem; line-height: 1.7; color: #444;">
<li><strong>Stateless Execution:</strong> Designed for reproducible inference with proper session management and error handling.</li>
<li><strong>Device-Aware Fallback:</strong> Automatic GPU/CPU detection with graceful degradation and resource optimization.</li>
<li><strong>Modular Architecture:</strong> Separated concerns with distinct components for preprocessing, inference, and post-processing.</li>
<li><strong>Config-Driven Experimentation:</strong> YAML-based configuration system for hyperparameters and model variants.</li>
<li><strong>Production Pipeline:</strong> End-to-end pipeline with logging, monitoring, and batch processing capabilities.</li>
</ul>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Technical Stack:</h5>
<p style="font-size: 0.95rem; color: #444; margin-bottom: 0;">PyTorch, Diffusion Models, 3D Mesh Processing, YAML Configuration, Production Deployment</p>
</div>
</div>
</div>

<!-- Project 2: Reddit-Persona -->
<div class="jumbotron" style="margin-top: 30px; margin-bottom: 30px; padding: 30px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
<div class="row">
<div class="col-md-4">
<img src="{{ '/images/reddit.png' | relative_url }}" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px; margin-bottom: 15px;" alt="LLM-based Reddit user persona generation system – Reddit-Persona">
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 10px; text-align: center;">July 2025</p>
<p style="font-size: 0.95rem; font-style: italic; color: #555; text-align: center; margin-bottom: 0;">LLM-based user persona generation from Reddit activity</p>
</div>
<div class="col-md-8">
<h3 style="font-weight: 700; font-size: 1.6rem; color: #222; margin-bottom: 15px;">Reddit-Persona — LLM-based User Persona Generation</h3>
<div style="margin-bottom: 20px;">
<p style="font-size: 1rem; line-height: 1.6; color: #444; margin-bottom: 15px;">Developed a production-grade LLM system to analyze Reddit user activity and generate structured, UX-oriented personas. Balances cost, scalability, and usability through intelligent design choices.</p>
</div>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Key Features & Implementation:</h5>
<ul style="padding-left: 25px; margin-bottom: 20px; font-size: 0.95rem; line-height: 1.7; color: #444;">
<li><strong>Chunked Inference:</strong> Processes large user histories efficiently with memory-conscious batching.</li>
<li><strong>Modular Configuration:</strong> Flexible persona templates and analysis parameters for different use cases.</li>
<li><strong>Dual Interfaces:</strong> CLI for automation and Streamlit for interactive exploration and visualization.</li>
<li><strong>Cost Optimization:</strong> Smart caching and token management to minimize LLM API costs.</li>
<li><strong>Structured Output:</strong> Consistent persona format with demographics, interests, and behavioral patterns.</li>
</ul>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Technical Stack:</h5>
<p style="font-size: 0.95rem; color: #444; margin-bottom: 0;">OpenAI API, Reddit PRAW, Streamlit, Data Processing, Persona Modeling</p>
</div>
</div>
</div>

<!-- Project 3: MÍMIR -->
<div class="jumbotron" style="margin-top: 30px; margin-bottom: 30px; padding: 30px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
<div class="row">
<div class="col-md-4">
<img src="{{ '/images/mimir.png' | relative_url }}" style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px; margin-bottom: 15px;" alt="Research-oriented LLM system for DevOps incident reasoning – MÍMIR">
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 10px; text-align: center;">2025 – Present</p>
<p style="font-size: 0.95rem; font-style: italic; color: #555; text-align: center; margin-bottom: 0;">Research-oriented LLM system for DevOps incident reasoning</p>
</div>
<div class="col-md-8">
<h3 style="font-weight: 700; font-size: 1.6rem; color: #222; margin-bottom: 15px;">MÍMIR — Research-Oriented LLM System</h3>
<div style="margin-bottom: 20px;">
<p style="font-size: 1rem; line-height: 1.6; color: #444; margin-bottom: 15px;">Designing a research-oriented LLM system to study retrieval-augmented reasoning and parameter-efficient adaptation under realistic system constraints. Emphasizes reproducible evaluation over application demos.</p>
</div>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Key Features & Implementation:</h5>
<ul style="padding-left: 25px; margin-bottom: 20px; font-size: 0.95rem; line-height: 1.7; color: #444;">
<li><strong>Retrieval-Augmented Reasoning:</strong> Advanced RAG implementation with multiple knowledge sources and fusion strategies.</li>
<li><strong>Parameter-Efficient Adaptation:</strong> LoRA and quantization techniques for resource-constrained deployment.</li>
<li><strong>System-Level Evaluation:</strong> Comprehensive metrics covering accuracy, latency, cost, and robustness.</li>
<li><strong>Reproducible Benchmarks:</strong> Standardized datasets and evaluation protocols for fair comparison.</li>
<li><strong>Production Constraints:</strong> Real-world considerations including memory limits, inference speed, and scalability.</li>
</ul>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Technical Stack:</h5>
<p style="font-size: 0.95rem; color: #444; margin-bottom: 0;">RAG Systems, LoRA, Model Quantization, Evaluation Frameworks, System Optimization</p>
</div>
</div>
</div>

<!-- Project 4: LLM Compression & Interpretability -->
<div class="jumbotron" style="margin-top: 30px; margin-bottom: 30px; padding: 30px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
<div class="row">
<div class="col-md-4">
<div style="width: 100%; height: 200px; background-color: #e9ecef; border-radius: 8px; display: flex; align-items: center; justify-content: center; color: #6c757d; font-size: 0.9rem; margin-bottom: 15px;">
[Research Image]
</div>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 10px; text-align: center;">2025 – Present</p>
<p style="font-size: 0.95rem; font-style: italic; color: #555; text-align: center; margin-bottom: 0;">Research on LLM compression and interpretability</p>
</div>
<div class="col-md-8">
<h3 style="font-weight: 700; font-size: 1.6rem; color: #222; margin-bottom: 15px;">LLM Compression & Interpretability (paper in preparation)</h3>
<div style="margin-bottom: 20px;">
<p style="font-size: 1rem; line-height: 1.6; color: #444; margin-bottom: 15px;">Studying how parameter-efficient fine-tuning and compression techniques alter internal representations and attention dynamics in transformer models. This research bridges the gap between model efficiency and interpretability.</p>
</div>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Research Focus Areas:</h5>
<ul style="padding-left: 25px; margin-bottom: 20px; font-size: 0.95rem; line-height: 1.7; color: #444;">
<li><strong>LoRA Analysis:</strong> Investigating how low-rank adaptations affect model representations and reasoning capabilities.</li>
<li><strong>Quantization Impact:</strong> Studying the trade-offs between model size, inference speed, and performance degradation.</li>
<li><strong>Attention Dynamics:</strong> Analyzing how compression techniques alter attention patterns and information flow.</li>
<li><strong>Representation Shifts:</strong> Measuring changes in internal embeddings and feature spaces after compression.</li>
</ul>
 
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Methodology:</h5>
<p style="font-size: 0.95rem; color: #444; margin-bottom: 0;">Comparative Analysis, Attention Visualization, Embedding Analysis, Performance Metrics</p>
</div>
</div>
</div>

<!-- Project 5: OpenVINO Contributions -->
<div class="jumbotron" style="margin-top: 30px; margin-bottom: 30px; padding: 30px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
<div class="row">
<div class="col-md-4">
<div style="width: 100%; height: 200px; background-color: #e9ecef; border-radius: 8px; display: flex; align-items: center; justify-content: center; color: #6c757d; font-size: 0.9rem; margin-bottom: 15px;">
[OpenVINO Logo]
</div>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 10px; text-align: center;">2024 – 2025</p>
<p style="font-size: 0.95rem; font-style: italic; color: #555; text-align: center; margin-bottom: 0;">Open-source optimization contributions to Intel OpenVINO</p>
</div>
<div class="col-md-8">
<h3 style="font-weight: 700; font-size: 1.6rem; color: #222; margin-bottom: 15px;">OpenVINO Ecosystem Contributions</h3>
<div style="margin-bottom: 20px;">
<p style="font-size: 1rem; line-height: 1.6; color: #444; margin-bottom: 15px;">Contributed to open-source optimization efforts within Intel's OpenVINO ecosystem, focusing on improving model performance and compatibility for edge deployment scenarios.</p>
</div>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Contribution Areas:</h5>
<ul style="padding-left: 25px; margin-bottom: 20px; font-size: 0.95rem; line-height: 1.7; color: #444;">
<li><strong>Model Optimization:</strong> Improved conversion pipelines for popular transformer architectures.</li>
<li><strong>Performance Tuning:</strong> Optimized inference kernels for specific hardware configurations.</li>
<li><strong>Documentation:</strong> Enhanced technical documentation and usage examples.</li>
<li><strong>Community Support:</strong> Active participation in issue resolution and feature discussions.</li>
<li><strong>Testing Framework:</strong> Contributed to automated testing and validation procedures.</li>
</ul>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Technical Stack:</h5>
<p style="font-size: 0.95rem; color: #444; margin-bottom: 0;">C++, Python, OpenVINO Toolkit, Model Optimization, Edge Computing</p>
</div>
</div>
</div>

<!-- Project 6: Advait AI Community Platform -->
<div class="jumbotron" style="margin-top: 30px; margin-bottom: 30px; padding: 30px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
<div class="row">
<div class="col-md-4">
<div style="width: 100%; height: 200px; background-color: #e9ecef; border-radius: 8px; display: flex; align-items: center; justify-content: center; color: #6c757d; font-size: 0.9rem; margin-bottom: 15px;">
[Advait Community]
</div>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 10px; text-align: center;">2025 – Present</p>
<p style="font-size: 0.95rem; font-style: italic; color: #555; text-align: center; margin-bottom: 0;">300+ member AI community leadership and platform</p>
</div>
<div class="col-md-8">
<h3 style="font-weight: 700; font-size: 1.6rem; color: #222; margin-bottom: 15px;">Advait AI Community Platform</h3>
<div style="margin-bottom: 20px;">
<p style="font-size: 1rem; line-height: 1.6; color: #444; margin-bottom: 15px;">Leading a 300+ member student-led AI community focused on research-oriented machine learning, systems engineering, and applied AI development. Building both the community culture and technical infrastructure.</p>
</div>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Leadership & Platform Development:</h5>
<ul style="padding-left: 25px; margin-bottom: 20px; font-size: 0.95rem; line-height: 1.7; color: #444;">
<li><strong>Community Building:</strong> Grew from 50 to 300+ members through strategic outreach and engagement.</li>
<li><strong>Technical Initiatives:</strong> Designed and coordinated research projects across LLMs, CV, and ML systems.</li>
<li><strong>Event Management:</strong> Organized technical talks, workshops, and internal study groups.</li>
<li><strong>Mentorship Programs:</strong> Established peer-to-peer learning and skill development frameworks.</li>
<li><strong>Platform Infrastructure:</strong> Built systems for project management, communication, and resource sharing.</li>
</ul>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Impact & Outcomes:</h5>
<p style="font-size: 0.95rem; color: #444; margin-bottom: 0;">20+ active projects, 15+ technical events, 300+ engaged members, strong industry partnerships</p>
</div>
</div>
</div>

<!-- Project 7: ML Systems Research Pipeline -->
<div class="jumbotron" style="margin-top: 30px; margin-bottom: 30px; padding: 30px; border: 1px solid #e0e0e0; border-radius: 8px; background-color: #fafafa; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
<div class="row">
<div class="col-md-4">
<div style="width: 100%; height: 200px; background-color: #e9ecef; border-radius: 8px; display: flex; align-items: center; justify-content: center; color: #6c757d; font-size: 0.9rem; margin-bottom: 15px;">
[Research Pipeline]
</div>
<p style="color: #6c757d; font-size: 0.9rem; margin-bottom: 10px; text-align: center;">2024 – Present</p>
<p style="font-size: 0.95rem; font-style: italic; color: #555; text-align: center; margin-bottom: 0;">Production-grade ML research and experimentation pipeline</p>
</div>
<div class="col-md-8">
<h3 style="font-weight: 700; font-size: 1.6rem; color: #222; margin-bottom: 15px;">ML Systems Research Pipeline</h3>
<div style="margin-bottom: 20px;">
<p style="font-size: 1rem; line-height: 1.6; color: #444; margin-bottom: 15px;">Developed a comprehensive pipeline for reproducible ML research that bridges academic experimentation with production deployment. Focuses on systematic experimentation and reliable results.</p>
</div>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Pipeline Components:</h5>
<ul style="padding-left: 25px; margin-bottom: 20px; font-size: 0.95rem; line-height: 1.7; color: #444;">
<li><strong>Experiment Tracking:</strong> Comprehensive logging of hyperparameters, metrics, and artifacts.</li>
<li><strong>Version Control:</strong> Model and dataset versioning with proper lineage tracking.</li>
<li><strong>Automated Testing:</strong> Unit tests, integration tests, and regression testing for ML components.</li>
<li><strong>Deployment Pipeline:</strong> CI/CD integration with automated model validation and deployment.</li>
<li><strong>Monitoring & Observability:</strong> Real-time performance tracking and drift detection.</li>
</ul>
<h5 style="font-weight: 600; font-size: 1.1rem; color: #222; margin-bottom: 12px;">Technical Stack:</h5>
<p style="font-size: 0.95rem; color: #444; margin-bottom: 0;">MLflow, Docker, Kubernetes, GitHub Actions, Prometheus, Grafana, PyTorch</p>
</div>
</div>
</div>

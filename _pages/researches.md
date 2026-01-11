---
title: "Research"
permalink: /researches/
author_profile: true
---

## Overall
My research aims to improve how air-quality and chemical transport models (CTMs) represent wildfire smoke—from emissions to chemistry to community exposure. My Ph.D. work at the University of Montana (Atmospheric Chemistry Observations and Modeling Group) focused on constraining wildfire VOC emissions, diagnosing smoke photochemistry using aircraft and ground observations, and translating multi-day aged smoke episodes into health-relevant exposure metrics. I am now a postdoctoral researcher at Rutgers University in Prof. Xiaomeng Jin’s group, extending this work toward chemically informed exposure indicators and model–measurement frameworks that connect smoke composition to public-health outcomes.

A central theme across my projects is building a **fire-adapted modeling framework (primarily within GEOS-Chem)** that is strongly constrained by observations (aircraft campaigns, ground networks, targeted measurements, and satellite products where appropriate). The goal is to move beyond “PM₂.₅-only” wildfire smoke characterization and toward **mechanistic understanding and actionable metrics** that better reflect toxicity and oxidant formation.

**Representative research questions:**
- How can wildfire emissions and smoke chemistry be represented more accurately in CTMs to reduce biases in simulated air quality?
- How does smoke composition evolve from fresh plumes to multi-day aged pollution, and which processes control oxidant formation and secondary pollutants?
- What roles do reactive VOC classes (e.g., furanoids and other oxygenated VOCs) play in O₃ formation and secondary products in smoke-impacted regions?
- How can chemically resolved wildfire-smoke metrics improve population-scale exposure and health assessment beyond PM₂.₅ mass alone?

---

## Wildfire Emissions
I constrain wildfire emissions of VOCs using aircraft observations and complementary measurements, with an emphasis on identifying why models can reproduce some primary tracers (e.g., CO) but still miss key oxygenated VOCs (OVOCs). This work is summarized in my peer-reviewed ACP paper (Jin *et al.*, 2023), which shows that commonly used fire inventories substantially underestimate western U.S. wildfire VOC emissions and that scaling total emissions alone does not fully resolve OVOC biases.

**What I do in this area:**
- Use aircraft campaign datasets (e.g., WE-CAN, FIREX-AQ) to constrain emission ratios and evaluate inventory biases.
- Diagnose whether model–observation gaps are driven by burned area / dry matter burned, emission factors, plume injection, or chemical processing.
- Provide model-ready emission constraints that improve predictive skill for smoke-impacted air quality.

---

## Smoke Chemistry
A key outcome of my Ph.D. research is an observation-constrained framework for understanding **OH–O₃–PAN chemistry in fresh wildfire smoke**, accepted in *Science Advances* (**“Ozone Photochemistry in Fresh Biomass Burning Smoke”**).

In this work, we show that fresh biomass-burning plumes can be chemically intense:
- **OH peaks at ~5–20 × 10⁶ molecules cm⁻³ in the first 1–2 hours**, largely driven by high HONO early on, with OVOC photolysis and O₃ becoming more important later.
- Using **chemical age** (integrated OH exposure normalized by an ambient OH reference), we find chemical aging can be **~3–4× faster than physical aging within the first 2 hours**.
- We diagnose rapid secondary formation early in plume evolution (e.g., **P(O₃) ≈ 4.2 ± 1.5% hr⁻¹** and **P(PAN) ≈ 0.4 ± 0.1% hr⁻¹** during the first hour), with rates slowing down as plumes age.
- We also show that ozone sensitivity thresholds commonly used for urban air can shift in smoke: we infer an approximate **FNR threshold of ~4–6** separating transient VOC-limited (or transitional) and NOₓ-limited behavior in fresh smoke, with some plumes remaining VOC-limited for roughly the first ~2 hours.

More broadly, this study evaluates how chemical mechanism complexity and VOC representation affect modeled plume evolution, and identifies missing/oversimplified pathways in CTMs that matter for predicting O₃ in fire-impacted regions.

---

## Mechanism Development and Reactive VOCs
Wildfire smoke is chemically complex, and many reactive VOCs relevant for oxidant budgets and OVOC formation are simplified or missing in standard mechanisms. A major part of my research is improving chemical mechanisms for wildfire VOCs and quantifying how those improvements change modeled oxidants and secondary products.

A specific focus is **furanoids** (furan and substituted furans), which are abundant in biomass-burning emissions and can be important precursors for oxygenated products. I combine:
- **0-D (box) modeling** for mechanism evaluation and process attribution,
- **3-D CTM simulations** for regional-to-global impacts,
- and **observational constraints** to ensure mechanism updates are supported by measurements.

This work directly informs simplified but chemically faithful mechanism development for 3-D models, enabling improved representation of wildfire smoke chemistry without prohibitive computational cost.

---

## Aged Smoke in Communities: Exposure and Health-Relevant Metrics
A core motivation of my research is that **community-scale smoke measurements beyond PM₂.₅ are rare**, limiting model evaluation and health interpretation. I study multi-day aged smoke that impacts communities and quantify how smoke alters not only PM₂.₅ but also chemically specific hazardous air pollutants (HAPs) and oxidant-related conditions.

Using the Missoula, Montana 2020 wildfire episode as a case study (submitted to *Atmospheric Chemistry and Physics*: **“Characterizing emissions, chemistry, and health impacts of aged wildfire smoke in a western US city”**), I connect:
- ground observations (criteria pollutants + speciated VOCs where available),
- CTM simulations of smoke transport and chemistry,
- and exposure/risk-relevant indicators (e.g., chronic inhalation risk metrics and noncancer hazard proxies, when appropriate).

This line of work motivates my current postdoctoral focus on developing chemically informed exposure indicators that can be integrated with epidemiological and machine-learning frameworks.

---

If you are interested in collaboration—especially on wildfire smoke emissions, chemistry, observational constraints, CTM development, or exposure/health applications—please feel free to reach out via my [contact page](/contact/).

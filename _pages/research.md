---
title: "Research"
permalink: /research/
author_profile: true
redirect_from:
  - /researches/
---

## From plumes to people

My research follows wildfire smoke from emissions at the source, through chemical transformation and regional transport, to community exposure. I combine aircraft and ground-based observations, satellite remote sensing, GEOS-Chem, F0AM, trajectory analysis, and data-driven methods to determine why models miss important reactive species and secondary pollutants. My long-term goal is to improve smoke predictions and develop chemically informed exposure metrics for air-quality and public-health applications.

The research themes below follow that source-to-receptor progression: emissions, fresh-plume chemistry, chemical mechanisms and aging, ozone-production regimes, satellite-supported transport analysis, and the effects of aged smoke on communities. Because each observing system represents a different spatial and temporal scale, I use explicit model-to-observation sampling rather than treating aircraft transects, surface time series, satellite columns, and model grid cells as directly interchangeable.

## Wildfire emissions and aircraft constraints

- **Research question:** How accurately do widely used inventories represent wildfire emissions of VOCs and OVOCs?
- **Approach:** I use aircraft observations from campaigns including WE-CAN and FIREX-AQ to constrain emissions and evaluate species-level model performance.
- **Key finding:** My 2023 *Atmospheric Chemistry and Physics* study showed that inventories substantially underestimate western U.S. wildfire VOC emissions and that scaling total emissions alone cannot resolve species-specific biases.
- **Model implication:** I separate the effects of dry matter burned and fire activity, species-specific emission factors and ratios, plume injection and transport, dilution and background mixing, and chemical loss and secondary formation. This framework translates observations into model-ready emission updates without attributing every mismatch to a single inventory correction.

**Related work:** [[paper](https://doi.org/10.5194/acp-23-5969-2023)] [[data](https://doi.org/10.5281/zenodo.15021583)] [[code](https://github.com/jinlx/Western-US-emission-packages)]

## Fresh-smoke chemistry and oxidant formation

- **Research question:** Which chemical and physical processes control OH, ozone, and PAN formation during the first hours after wildfire emission?
- **Approach:** My 2026 *Science Advances* study combines aircraft observations with F0AM and GEOS-Chem to evaluate HONO, VOC speciation, OVOC photolysis, nitrogen chemistry, dilution, and mechanism complexity.
- **Key finding:** Fresh smoke can be highly photochemically active, and chemical processing can progress faster than physical plume aging.
- **Model implication:** Evaluating individual species, reaction families, and oxidant budgets, rather than only aggregate correlation or bias, reveals missing or simplified pathways that influence ozone predictions in fire-impacted regions.

**Related work:** [[paper](https://doi.org/10.1126/sciadv.ads2157)] [[data](https://doi.org/10.5281/zenodo.18226363)] [[code](https://github.com/jinlx/Fresh-smoke-chemistry-packages)]

## Chemical mechanisms and reactive VOCs

- **Research question:** Which reactive wildfire VOC pathways materially affect oxidants and secondary pollutants but remain simplified or absent in standard mechanisms?
- **Chemical focus:** Furanoids are a particular target because they are abundant in biomass-burning emissions and can affect OH reactivity and oxygenated-product formation.
- **Approach:** I combine observations, mechanism comparisons, detailed box-model chemistry, and regional-to-global simulations.
- **Model contribution:** I develop fire-adapted representations that connect chemical detail with computationally practical 3-D mechanisms, supporting chemically faithful mechanism reduction and more reliable smoke predictions.

**Related work:** [[AGU abstract](https://agu.confex.com/agu/agu24/meetingapp.cgi/Paper/1649115)] [[IGC11 presentation](https://drive.google.com/file/d/1k07wsJk6IO2TytaaRB1hi7lyWq-ynW2L/view)]

## Chemical aging: OH exposure and photochemical age

- **Objective:** Describe smoke oxidation history without treating chemical processing and physical transport as interchangeable.
- **OH exposure:** This is the time-integrated OH concentration, not automatically the elapsed transport time.
- **Photochemical age:** A VOC-ratio clock also depends on reaction-rate coefficients, source ratios, mixing, and assumptions about the OH history.
- **Interpretation:** I report the chemical clock, kinetics, source and background assumptions, and uncertainty. Any conversion from OH exposure to elapsed time requires an explicitly stated and supported OH concentration or time history.

**Related work:** [[paper](https://doi.org/10.1126/sciadv.ads2157)] [[code](https://github.com/jinlx/Fresh-smoke-chemistry-packages)]

## Ozone-production regimes and isopleths

- **Research question:** How do emissions and aging chemistry shape ozone production as a wildfire plume evolves?
- **Approach:** I use VOC-NOx ozone isopleths and controlled sensitivity simulations to test responses across chemical regimes.
- **Key insight:** Ozone responses are not necessarily monotonic with smoke loading, and the governing regime can shift during plume evolution.
- **Interpretation:** Each isopleth is evaluated within its VOC and NOx perturbations, integration time, meteorology, dilution, initial conditions, and boundary conditions. I do not infer a universal regime from one VOC-to-NOx ratio or transfer an urban threshold directly to wildfire smoke without testing the relevant chemistry.

**Related work:** [[paper](https://doi.org/10.1126/sciadv.ads2157)] [[code](https://github.com/jinlx/Fresh-smoke-chemistry-packages)]

## Satellite plume transects and model evaluation

- **Objective:** Extend observation-model integration to regional wildfire plumes observed by instruments such as TROPOMI and TEMPO.
- **Approach:** I construct satellite-sampled along-plume and cross-plume transects for consistent comparison with model output and complementary aircraft or surface observations.
- **Retrieval and sampling controls:** The analysis accounts for pixel quality, footprint, retrieval sensitivity, transect geometry, background selection, overpass timing, winds, plume height, and column-to-model mapping.
- **Interpretation:** A satellite transect is not automatically a Lagrangian aging trajectory. I test how distance relates to transport or chemical age and evaluate spatial, temporal, and chemical representativeness before diagnosing plume evolution or model bias.
- **Project status:** This is current Rutgers research; public outputs are forthcoming.

## Aged smoke, community exposure, and public health

- **Research question:** How do transport and chemical aging shape the pollutants and health-relevant exposures experienced by smoke-affected communities?
- **Case study:** I examine the multi-day aged plume that reached Missoula, Montana, during the 2020 wildfire-smoke episode.
- **Approach:** I combine surface measurements of criteria pollutants and speciated VOCs with GEOS-Chem to evaluate transport, chemistry, exposure, and health-relevant indicators.
- **Health relevance:** The analysis moves beyond a PM2.5-only description by considering chemically resolved hazardous air pollutants and propagating emissions and chemistry biases into exposure and risk metrics. Interpretations are tied to named toxicity sources, averaging periods, populations, and uncertainty rather than treating modeled concentrations as error-free inputs.

**Related work:** [[preprint](https://doi.org/10.5194/egusphere-2026-114)] [[data](https://zenodo.org/records/18209325)] [[code](https://github.com/jinlx/Aged-wildfire-smoke-emission-chemistry-health)]

If you are interested in collaboration on wildfire emissions, smoke chemistry, satellite integration, atmospheric modeling, or exposure and health applications, please use my [contact page](/contact/).

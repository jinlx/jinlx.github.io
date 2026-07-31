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

I use aircraft observations from campaigns including WE-CAN and FIREX-AQ to constrain wildfire emissions of VOCs and OVOCs. My 2023 *Atmospheric Chemistry and Physics* study showed that widely used inventories substantially underestimate western U.S. wildfire VOC emissions and that scaling total emissions alone cannot resolve species-specific biases.

To diagnose model-observation disagreement, I distinguish among:

- dry matter burned and fire activity;
- species-specific emission factors and emission ratios;
- plume injection, transport, dilution, and background mixing; and
- chemical loss and secondary formation after emission.

This framework translates observational constraints into model-ready emission updates without attributing every mismatch to a single inventory correction.

**Related work:** [[paper](https://doi.org/10.5194/acp-23-5969-2023)] [[data](https://doi.org/10.5281/zenodo.15021583)] [[code](https://github.com/jinlx/Western-US-emission-packages)]

## Fresh-smoke chemistry and oxidant formation

My 2026 *Science Advances* study investigates OH-ozone-PAN chemistry in fresh biomass-burning plumes. It combines aircraft observations with F0AM and GEOS-Chem to evaluate how HONO, VOC speciation, OVOC photolysis, nitrogen chemistry, dilution, and mechanism complexity control oxidant formation during the first hours after emission.

The analysis shows that fresh smoke can be highly photochemically active and that chemical processing can progress faster than physical plume aging. By evaluating individual species, reaction families, and oxidant budgets, rather than only aggregate model correlation or bias, I identify missing or simplified pathways that influence ozone predictions in fire-impacted regions.

**Related work:** [[paper](https://doi.org/10.1126/sciadv.ads2157)] [[data](https://doi.org/10.5281/zenodo.18226363)] [[code](https://github.com/jinlx/Fresh-smoke-chemistry-packages)]

## Chemical mechanisms and reactive VOCs

Many reactive wildfire VOCs are simplified or absent in standard chemical mechanisms. I develop fire-adapted representations that connect detailed box-model chemistry with computationally practical 3-D mechanisms. Furanoids are a particular focus because they are abundant in biomass-burning emissions and can affect OH reactivity and oxygenated-product formation.

I combine mechanism comparisons, observations, and regional-to-global simulations to determine which pathways materially affect oxidants and secondary pollutants. This approach supports chemically faithful mechanism reduction and more reliable wildfire-smoke predictions.

**Related work:** [[AGU abstract](https://agu.confex.com/agu/agu24/meetingapp.cgi/Paper/1649115)] [[IGC11 presentation](https://drive.google.com/file/d/1k07wsJk6IO2TytaaRB1hi7lyWq-ynW2L/view)]

## Chemical aging: OH exposure and photochemical age

To describe smoke oxidation history, I use complementary OH-exposure and photochemical-age diagnostics. OH exposure is the time-integrated OH concentration, not automatically the elapsed transport time. A photochemical age inferred from a VOC-ratio clock also depends on reaction-rate coefficients, source ratios, mixing, and assumptions about the OH history.

I therefore report the chemical clock, kinetics, source and background assumptions, and uncertainty. Any conversion from OH exposure to elapsed time requires an explicitly stated and supported OH concentration or time history.

**Related work:** [[paper](https://doi.org/10.1126/sciadv.ads2157)] [[code](https://github.com/jinlx/Fresh-smoke-chemistry-packages)]

## Ozone-production regimes and isopleths

To determine how emissions and aging chemistry translate into ozone, I use VOC-NOx ozone isopleths and controlled sensitivity simulations. Wildfire-smoke ozone responses are not necessarily monotonic with smoke loading, and the governing chemical regime can shift as a plume evolves.

I interpret each isopleth within the conditions used to generate it: VOC and NOx perturbations, integration time, meteorology, dilution, initial conditions, and boundary conditions. I do not infer a universal ozone-production regime from a single VOC-to-NOx ratio or transfer an urban threshold directly to wildfire smoke without testing the relevant chemistry.

**Related work:** [[paper](https://doi.org/10.1126/sciadv.ads2157)] [[code](https://github.com/jinlx/Fresh-smoke-chemistry-packages)]

## Satellite plume transects and model evaluation

At Rutgers, I am extending observation-model integration to regional wildfire plumes observed by instruments such as TROPOMI and TEMPO. I construct satellite-sampled along-plume and cross-plume transects for consistent comparison with model output and complementary aircraft or surface observations.

A satellite transect is not automatically a Lagrangian aging trajectory. The analysis therefore defines and tests:

- pixel quality, footprint, and retrieval sensitivity;
- along-plume or cross-plume geometry and background selection;
- overpass timing, winds, plume height, and column-to-model mapping;
- the relationship between distance and transport or chemical age; and
- spatial, temporal, and chemical representativeness.

These controls are essential for using satellite columns to diagnose plume evolution, connect distance with transport or chemical age, and evaluate model bias.

**Project status:** Current Rutgers research; public outputs are forthcoming.

## Aged smoke, community exposure, and public health

At the receptor end of the smoke lifecycle, I study multi-day aged plumes that reach populated communities. For the 2020 Missoula, Montana, smoke episode, I combine surface measurements of criteria pollutants and speciated VOCs with GEOS-Chem to evaluate transport, chemistry, exposure, and health-relevant indicators.

This work moves beyond a PM2.5-only description by considering chemically resolved hazardous air pollutants and propagating emissions and chemistry biases into exposure and risk metrics. I tie health interpretations to named toxicity sources, averaging periods, populations, and uncertainty rather than treating modeled concentrations as error-free inputs.

**Related work:** [[preprint](https://doi.org/10.5194/egusphere-2026-114)] [[data](https://zenodo.org/records/18209325)] [[code](https://github.com/jinlx/Aged-wildfire-smoke-emission-chemistry-health)]

If you are interested in collaboration on wildfire emissions, smoke chemistry, satellite integration, atmospheric modeling, or exposure and health applications, please use my [contact page](/contact/).

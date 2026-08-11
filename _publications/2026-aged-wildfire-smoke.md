---
title: "Characterizing emissions, chemistry, and health impacts of aged wildfire smoke in a western US city"
description: "Hourly ground measurements in Missoula reveal how multi-day wildfire smoke changed chemically, affected ozone and screening-level health risks, and challenged GEOS-Chem."
publication_date: "2026-08-07"
last_modified_at: "2026-08-11"
authors:
  - name: "Lixu Jin"
    citation_name: "Jin, Lixu"
    orcid: "https://orcid.org/0000-0003-1346-5352"
  - name: "Lu Tan"
    citation_name: "Tan, Lu"
  - name: "Damien T. Ketcherside"
    citation_name: "Ketcherside, Damien T."
  - name: "Vanessa Selimovic"
    citation_name: "Selimovic, Vanessa"
  - name: "Keri Nauman"
    citation_name: "Nauman, Keri"
  - name: "Robert J. Yokelson"
    citation_name: "Yokelson, Robert J."
    orcid: "https://orcid.org/0000-0002-8415-6808"
  - name: "Lu Hu"
    citation_name: "Hu, Lu"
    orcid: "https://orcid.org/0000-0002-4892-454X"
journal: "Atmospheric Chemistry and Physics"
publisher: "Copernicus Publications"
issn: "1680-7316"
volume: "26"
issue: "15"
first_page: "11047"
last_page: "11066"
pagination: "11047–11066"
doi: "10.5194/acp-26-11047-2026"
paper_url: "https://doi.org/10.5194/acp-26-11047-2026"
data_url: "https://doi.org/10.5281/zenodo.18209324"
code_url: "https://github.com/jinlx/Aged-wildfire-smoke-emission-chemistry-health"
supplement_url: "https://doi.org/10.5194/acp-26-11047-2026-supplement"
summary_slug: "2026-aged-wildfire-smoke"
key_figure: "/images/publications/2026-aged-wildfire-smoke/key-figure.png"
key_figure_width: 600
key_figure_height: 518
key_figure_alt: "Conceptual summary showing multi-day wildfire smoke reaching people, particle- and gas-related screening risks, and the GEOS-Chem model comparison."
key_figure_caption: "Conceptual summary of the aged-smoke observations, screening-level health-risk estimates, and GEOS-Chem comparison. Jin et al. (2026), CC BY 4.0."
license_url: "https://creativecommons.org/licenses/by/4.0/"
keywords:
  - "aged wildfire smoke"
  - "volatile organic compounds"
  - "ozone"
  - "PM2.5"
  - "health risk screening"
  - "GEOS-Chem"
  - "Missoula"
abstract: >-
  We report hourly surface observations of PM₂.₅, CO, NOₓ, O₃, and 75 speciated VOCs in Missoula, Montana, during a strong smoke event in 2020. This study tests our current understanding of wildfire emissions, chemistry, and health effects as implemented in the GEOS-Chem chemical transport model. Three-or-more-day-old smoke transported from California and the Pacific Northwest increased CO, PM₂.₅, and total measured VOCs by factors of 2–8, with hourly maxima of 800 ppb, 120 µg m⁻³, and 85 ppb, respectively. In contrast, NOₓ levels were not elevated compared to the urban background. O₃ showed a non-monotonic response to wildfire smoke: MDA8 O₃ increased under light smoke but flattened or declined when PM₂.₅ exceeded ∼ 30–40 µg m⁻³, a feature that GEOS-Chem failed to reproduce. A 2020-style wildfire season recurring annually would yield an excess lifetime cancer risk of 100-in-1 million or approximately 7 times the non-smoke baseline. The chronic non-cancer hazard index (HI) would reach 3.0, indicating appreciable potential for chronic non-cancer effects. About 90 % of cancer risks are from PM₂.₅ whereas non-cancer risks are dominated by formaldehyde, benzene, acrolein, and acetaldehyde. GEOS-Chem captured major smoke intrusions but underestimated CO, PM₂.₅, and VOCs by 30 %–90 %. These model biases propagate to health metrics, with GEOS-Chem underestimating smoke-attributable cancer risk by ∼ 40 % and chronic HI by ∼ 10 times. We attribute the model errors to underpredicted fire emissions and unrepresented VOC chemistry, which together led to an overestimation of OH and insufficient secondary production.
citation: "Jin, L., Tan, L., Ketcherside, D. T., Selimovic, V., Nauman, K., Yokelson, R. J., and Hu, L. (2026). Characterizing emissions, chemistry, and health impacts of aged wildfire smoke in a western US city. Atmospheric Chemistry and Physics, 26, 11047–11066. https://doi.org/10.5194/acp-26-11047-2026"
---

<p class="publication-story__label">Plain-language summary</p>

## What Happens to Wildfire Smoke After Days in the Air?

<p class="publication-story__deck">Hourly ground measurements reveal what multi-day-old smoke brought to Missoula.</p>

Large collaborative field campaigns have produced detailed measurements of wildfire smoke near fires and aboard research aircraft. Far less is known about what remains in smoke after it has traveled and reacted for several days before reaching people at ground level. In September 2020, Missoula, Montana, experienced three smoke events. During smoke-affected periods, average PM₂.₅ reached 43 µg/m³—about seven times the local background—and the hourly peak reached 120 µg/m³. Much of the regional smoke had traveled and reacted for several days, although nearby fires may also have contributed. We asked what was still in the smoke when it reached the city and how its chemistry had changed along the way.

### Four findings

<ul class="publication-highlights">
  <li><strong>Ground measurements retained a chemical record of the journey.</strong> Benzene and toluene declined predictably with chemical age, while several oxygenated gases declined more slowly. The model’s OH exposure was about twice the value inferred from the ground-based chemical clock.</li>
  <li><strong>More smoke particles did not always mean more ozone.</strong> Ozone rose under lighter smoke, then leveled off or fell in the heaviest smoke. Both GEOS-Chem and AIRPACT missed this change.</li>
  <li><strong>Particles and gases shaped different screening-level risks.</strong> PM₂.₅ drove most of the estimated cancer risk, while measured hazardous gases drove most of the chronic non-cancer estimate.</li>
  <li><strong>Getting the smoke timing right was not enough.</strong> GEOS-Chem captured the first two events but underestimated many ground-level pollutants and the resulting screening-level risk estimates.</li>
</ul>

<section id="chinese-summary" class="publication-story__chinese" lang="zh-CN" markdown="1">

<p class="publication-story__label">中文解读</p>

## 野火烟雾漂了几天后发生了什么？

<p class="publication-story__deck">逐时地面观测读出了烟雾漂流数日后的化学变化。</p>

这些大型联合观测让我们对火场附近以及飞机所能采到的烟雾有了丰富认识，但烟雾漂流数日后真正抵达地面时还带着什么，相关观测仍然少得多。可等它真正漂进城市、来到人们呼吸的高度，往往已经在大气中漂了几天。一路上的稀释和反应不断改变它的成分。2020年9月，米苏拉接连经历了3次烟雾事件。受烟雾影响时，PM₂.₅平均浓度达到43 µg/m³，约为当地背景的7倍，小时峰值达到120 µg/m³。相当一部分烟雾在抵达米苏拉前已经经历了数日输送和反应，不过附近火灾也可能有所贡献。

### 四个主要发现

<ul class="publication-highlights">
  <li><strong>地面观测留下了烟雾沿途变化的线索。</strong> 苯和甲苯随化学年龄稳定下降，几种含氧气体却下降得更慢。模式算出的OH暴露约为地面数据推算值的2倍。</li>
  <li><strong>烟雾颗粒更多时臭氧不一定更高。</strong> 轻烟下臭氧升高，进入重烟阶段后却趋平或下降；GEOS-Chem和AIRPACT都没有再现这一转折。</li>
  <li><strong>颗粒物和有害气体主导了不同类型的风险估算。</strong> PM₂.₅主导癌症风险估算，实测有害气体则主导慢性非癌症风险估算。</li>
  <li><strong>算对烟雾到达时间还不够。</strong> GEOS-Chem抓住了前两次事件，却低估了多种地面污染物和相应的筛查层面健康风险。</li>
</ul>

</section>

<a id="top"></a>
# Scenario 04 — Detection Engineering Plan

**Owner:** [Abdul-Rehman](https://github.com/abdul4rehman215)  
**Original state:** approved implementation plan  
**Current state:** ✅ **Implemented / Detection v1.0 frozen / SOC-ready**  
**Primary MITRE ATT&CK:** `T1071.004 — Application Layer Protocol: DNS`

> [!NOTE]
> This file is retained as the design record that guided the engineering work. The implemented result is documented in [`detection-engineering/DETECTION-ENGINEERING.md`](detection-engineering/DETECTION-ENGINEERING.md), with acceptance evidence in [`detection-engineering/detection-engineering-validation.md`](detection-engineering/detection-engineering-validation.md) and change control in [`detection-engineering/FREEZE-RECORD.md`](detection-engineering/FREEZE-RECORD.md).

## Planned lifecycle → implemented result

| Planned phase | Result |
|---|---|
| Pre-flight / data quality | ✅ Live Unbound path, fields and resolver attribution validated |
| Ingestion timing | ✅ Current events near real-time; historical backlog/outliers identified |
| Normal baseline | ✅ Clean 24-hour profile and short-window behavior measured |
| Feature engineering | ✅ First-label structure, parent domain and unique-child behavior retained |
| Threshold-free hunting | ✅ Normal parent/child and label behavior profiled before thresholds |
| Controlled positive | ✅ Synthetic fresh 32-character child labels detected |
| Benign lookalike | ✅ Repeated long label did not produce a new detection |
| Detection v1.0 | ✅ `unique_child_labels>=5 AND long_label_count>=5 AND max_first_label_length>16` |
| Dashboard Studio | ✅ 11-panel investigation surface exported and QA-checked |
| Scheduled alert | ✅ Every minute, `-10m@m` to `-1m@m`, 10-minute suppression |
| Scenario AI profile | ✅ `dns_tunneling_v1`, webhook → OpenAI → HEC validated |
| Freeze gate | ✅ Frozen before official simulation/SOC/IR exercise |

## Detection Engineering design principles preserved

The implementation followed the plan's original rules:

- use live fields instead of assumed schema;
- baseline before thresholds;
- do not equate long DNS names, TXT, NXDOMAIN, high volume or entropy with tunneling by themselves;
- keep the rule explainable;
- prove both positive and benign cases;
- preserve raw-event drilldown;
- keep AI advisory;
- freeze the rule before the information-separated exercise.

## Final production rule

```text
unique_child_labels >= 5
AND long_label_count >= 5
AND max_first_label_length > 16
```

`T1572` remains unclaimed because the engineering validation did not establish a separate encapsulated protocol channel.

## Implemented artifacts

```text
detection-engineering/
├── DETECTION-ENGINEERING.md
├── detection-engineering-validation.md
├── FREEZE-RECORD.md
└── TROUBLESHOOTING-AND-LESSONS.md

spl/
├── baseline.spl
├── hunting.spl
├── detection.spl
├── validation.spl
├── scheduled-alert.md
├── history/
└── supporting/

dashboard/
├── scenario-04-dns-tunneling-investigation-dashboard.json
└── PANEL-SEARCHES.md

ai/
└── scenario-04-ai-mapping.md
```

The official simulation, SOC investigation, IR response and final closeout remain intentionally outside this completed engineering phase.

---

[🏠 Scenario Home](README.md) · [🛠️ Detection Engineering](detection-engineering/DETECTION-ENGINEERING.md) · [⬆ Back to top](#top)

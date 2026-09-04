<a id="top"></a>

<img src="https://capsule-render.vercel.app/api?type=soft&color=gradient&customColorList=2,7,12,18,24&height=128&section=header&text=%F0%9F%A7%A0%20Scenario%2004%20%E2%80%94%20Troubleshooting%20and%20Engineering%20Lessons&fontSize=25&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=DNSentinel%20Lab%20%C2%B7%20Scenario%2004%20%C2%B7%20DNS%20Tunneling%20%C2%B7%20Detection%20Engineering&descSize=13&descAlignY=68&descColor=14B8A6" width="100%" alt="Scenario 04 — Troubleshooting and Engineering Lessons" />

<div align="center">

![Scenario](https://img.shields.io/badge/Scenario_04-COMPLETE-2EA44F?style=flat-square)
![Workspace](https://img.shields.io/badge/Workspace-Detection_Engineering-14B8A6?style=flat-square)
![MITRE](https://img.shields.io/badge/MITRE-T1071.004-E34F26?style=flat-square)

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [🧾 Evidence](../evidence/README.md)

</div>

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

# 🧩 Scenario 04 — Troubleshooting and Engineering Lessons

This page preserves the issues that changed the engineering method or produced a reusable lesson. Minor navigation mistakes, copy/paste problems and the later alert-throttle adjustment are intentionally omitted.

## 📌 1. Aggregate latency looked unhealthy; current events were not

**Observation:** a 60-minute summary showed median ingestion near 117 seconds and P95 near 500 seconds.

**Investigation:** Abdul-Rehman listed individual recent events and found the newest DNS events arriving in roughly 0.03–0.8 seconds.

**Decision:** keep the healthy resolver/forwarder path unchanged and treat the old delayed events as historical backlog/outliers.

**Lesson:** **inspect the distribution before rebuilding a working pipeline.**

---

## 🤖 2. Unbound query/reply pairs could double the apparent DNS volume

**Observation:** the same DNS transaction appeared as separate `query` and `reply` events.

**Decision:** use `event_type="query"` for behavioral counts; keep reply events for response context and drilldown.

**Lesson:** **event semantics matter as much as field names.**

---

## 📊 3. Pre-flight traffic contaminated the first baseline maximum

**Observation:** Scenario 04 smoke/pre-flight qnames were among the longest names in the 24-hour view and pushed the apparent maximum to 48.

**Decision:** explicitly exclude the controlled tunnel namespace from the clean normal baseline.

**Result:** clean whole-qname maximum dropped to 43; clean normal first-label maximum remained 16.

**Lesson:** **never let your own validation traffic silently define normal behavior.**

---

## 📌 4. Whole-qname length was weaker than first-label structure

**Observation:** a legitimate Ubuntu service-style qname reached 43 characters even though its first label was short.

**Decision:** move the detection toward first-label length + fresh-child diversity under the same parent.

**Lesson:** **protocol structure can be more useful than one global length number.**

---

## 📌 5. Character/digit ratio looked strong mathematically but weak operationally

**Observation:** a tiny single-digit label could produce `digit_ratio=1.0` without being suspicious.

**Decision:** keep character mix as supporting context and omit entropy/ratio from the mandatory v1.0 conditions.

**Lesson:** **a large feature value is not automatically a useful security feature.**

---

## 📌 6. Dashboard labels and datasource bindings needed separate QA

**Observation:** the first exported Dashboard Studio JSON connected Query Type Mix and Response Code Mix to each other's data sources even though the searches themselves were valid.

**Decision:** correct the visualization bindings and re-export the dashboard before freeze.

**Lesson:** **review the dashboard definition, not only the rendered picture.**

---

## 🤖 7. Analyst-ready output was not automatically AI-schema-ready

**Observation:** Detection v1.0 already returned good human evidence, but the shared AI bridge expected wrapper fields such as `alert_id`, `scenario` and `evidence_json`.

**Decision:** keep the detection behavior unchanged and extend only the result contract.

**Lesson:** **transport, schema and detection semantics are different layers. Fix the layer that is actually wrong.**

---

## 💡 The engineering habit behind all seven lessons

The repeated pattern was:

```text
prove what still works
→ isolate the failing boundary
→ change one thing
→ validate recovery
→ return to the original task
```

That approach prevented healthy resolver, Splunk and detection components from being rewritten simply because a downstream view or integration contract was wrong.

<img src="https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif" width="100%" alt="section divider" />

<div align="center">

[🏠 Scenario Home](../README.md) · [🧠 Workspace](README.md) · [🛠️ Engineering Story](DETECTION-ENGINEERING.md) · [⬆ Back to top](#top) ·

**Structure before suspicion. Evidence before attribution. Human approval before containment.**

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=24,20,14,7,2&height=82&section=footer" width="100%" alt="DNSentinel Scenario 04 footer" />

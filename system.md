Totally fair — this is a big bundle. The best way to make it manageable (and future-proof for your Antora site) is
to set up a tiny “system” you can reuse for every remaining item. Below are ready-to-paste **AsciiDoc templates + a
workflow** so you can keep adding documents without losing the big picture.

# 1) Minimal workflow (repeat for every piece)

1. **Assign an ID** (Doc 1, 1i, 2, …; slips as 2a, 2b, etc.).
2. **Transliterate (diplomatic)** → keep line breaks, hyphens, dittos.
3. **Normalized reading** → resolve obvious scribal quirks.
4. **Translation (smooth)**.
5. **Extract events** (each act/service/decision = 1 event row).
6. **Cross-link**: index entry ↔ doc page ↔ event log.

# 2) Document page template (drop one per item)

```adoc
= {doc-title}  // e.g., Amt Report to the Rentkammer — 7 Oct 1841 (Doc 2)
:doc-id: doc-02
:place: Bbg.
:doc-date: 1841-10-07
:presented: 1841-10-11   // pr. in Cam
:rescript:                // if this sheet contains one
:served:                  // if the sheet itself records service
:source-images: image4r,image5l,image5r  // your filenames/anchors
:related-index: index-row-2

[abstract]
A short 2–3 line **What this does / Why it matters**.  
Example: Opposes installments; recommends 190-rthlr loan; lists holding size and debts.

== Diplomatic transcription
// Keep punctuation/line breaks/hyphenation; bracket uncertainties.
....
<your diplomatic text here>
....

== Normalized reading (German)
<your lightly normalized German here>

== Translation (English)
<your smooth translation here>

== Notes & readings
- Abbreviations expanded: …
- Uncertain letters: …
- Orthography: …

== Dates on/around this piece
- Document date: {doc-date}
- Presented (pr. in Cam): {presented}
- Rescript (if any): {rescript}
- Service (if any): {served}

== Extracted events (from this document)

[cols="12,16,20,18,18,16",options="header"]
|===
|Date |Type |Actor → Target |Place |Amount/Thing |Source lines

| 1841-10-07 | Report | Amt Bückeburg → Rentkammer | Bbg. | opposes installments; proposes 190 rthlr | §2–§4
|===
```

# 3) Event log (the “big picture” lives here)

Keep **every occurrence** here (even if only mentioned). This table becomes your narrative backbone.

```adoc
= Krückeberg Case — Event Log

[cols="12,14,20,18,16,20",options="header"]
|===
|Date (ISO) |Type |Actor → Target |Place |Amount/Thing |Source (doc-id §line)

| 1833-01-01 | Interest begins | — | — | 5% on 133 rthlr 7 mg (parental debt) | doc-02 §…
| 1836-07-30 | Suit opened | Hempel & Söhne → Krückeberg | Minden/Bbg. | case pending | doc-02 §…
| 1841-07-27 | Service | Amtsdiener Möller → Krückeberg | Bbg. | gleichlautendes Gegenbescheid; fees 22¼ mg | doc-2b (service slip)
| 1841-09-08* | Distraint ordered | Court → Krückeberg | — | Auspfändung (“unter 8 v.M.”) | doc-02 §… *inferred
| 1841-10-07 | Report | Amt → Rentkammer | Bbg. | recommends loan 190 rthlr; denies installments | doc-02
| 1841-10-14 | Rescript | Rentkammer → Amt | Bbg. | deny installments; allow loan; notify | doc-2a (“Copt.”)
|===
```

> Tip: star `*` for inferred dates; explain once at top.

# 4) Index mapping (you’ve started this — keep it!)

Use your Acten-Designation table as the **navigation spine**. You already nailed spans and dittos; just keep adding
rows as you process new pages, and link each left/right sub-column to the corresponding doc page and/or event log
rows.

# 5) People & offices roster (resolves “who’s who” anxiety)

```adoc
= People & Offices

[cols="22,26,52",options="header"]
|===
|Name/Abbrev |Role |Notes

| Krückeberg, Johann Heinrich (p.) | Petitioner / debtor | Colon No. 10, Berenbusch
| Hempel & Söhne | Creditor | Minden firm (outside territory)
| Amt Bückeburg | Local office | Executes service/distraint; reports to Rentkammer
| Fürstliche Rentkammer | Central chamber | Issues rescripts; handles Cammer-Casse (treasury)
| Cammer-Casse | Chamber treasury | Source/route for the 190-rthlr loan
| Möller, Amtsdiener | Process server | Insinuation slip, 27 Jul 1841
| GKR od Reik | Privy Chamber Councillor | Submits internal Vorträge; spelling as written
| Of. Creuzinger | Office holder | Reports; provides “Situations-Riß”
| K. R. Berger | Chamber councillor | Mentioned in Jan 1842 routing
| Sr. Durchlaucht | Sovereign | Cited in “Höchstes Rescr.”
|===
```

# 6) Money tracker (optional but powerful)

```adoc
= Money & Liabilities Summary

[cols="22,20,18,40",options="header"]
|===
|What |Amount |When |Source

| Parental debt (principal) | 133 rthlr 7 mg | since 1833 (5% p.a.) | doc-02
| Court/fees (example) | 22¼ mg | 1841-07-27 | service slip
| Other debts on holding | 700 rthlr | 1841-10-07 | doc-02
| Recommended loan | 190 rthlr | 1841-10-07 → 10-14 | doc-02 → doc-2a
| Buildings insured | 525 rthlr | 1841-10-07 | doc-02
|===
```

# 7) Glossary (drop-in; you can expand as you go)

You already have a strong glossary. Keep it as a **standalone page** and link terms (`xref:glossary.adoc#k-res[Rescript]`, etc.). That way you won’t re-explain “insinuirt,” “Cammer-Casse,” “p.,” etc., on every page.

---

## Quick triage so you can proceed now

1. Add **Doc 1i (decree)** page with the template.
2. Add the **27 Jul 1841** service slip page.
3. Add **Doc 2 (7 Oct)** and the **Copt./rescript (14 Oct)**.
4. Append the corresponding **event rows** after each page.
5. Keep marching forward (Dec 1841 items, then Jan–Feb 1842).

You don’t need to be a historian to tell this story well; the structure above will do the heavy lifting. If you paste your next document’s text into the template, I’ll slot it into the event log and flag any tricky readings right on the spot.


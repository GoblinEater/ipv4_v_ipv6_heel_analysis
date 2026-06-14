# IPv4 vs IPv6 Security Posture Visualizer
### *Achilles Heel vs Hermes Heel — A Structural Comparison*

**Part of the [Goblin Eaters Cyber Cavern](https://ubritsa.com) protocol series: *How Protocols Work, and How They Break***

---

## What This Is

An interactive single-file HTML tool that compares IPv4 and IPv6 across nine security domains using a dual mythology framework:

- **Achilles Heel** — a structural weakness baked into the protocol's design. Not a misconfiguration. Not a missing patch. A flaw in the architecture itself.
- **Hermes Heel** — a structural strength present when the protocol is correctly implemented. The winged-sandal advantage that IPv6 was designed to carry.

The goal is not to declare a winner. It is to make the *design posture* of each protocol visible and comparable — domain by domain, and in aggregate.

---

## The Myth Meter

The header contains two rows of tug-of-war bars:

**Row 1 — Overall (All 9 Domains)**
Aggregate scores across the entire dataset. Each point of Achilles weight pulls the bar red; each point of Hermes weight pulls it gold.

**Row 2 — Active Domain**
Updates live on every category click. Shows the posture for that specific domain only, so you can see whether a single category is dominated by weakness, strength, or genuinely contested.

### Scoring Weights

| Achilles Severity | Points |
|---|---|
| CRITICAL | 3 |
| HIGH | 2 |
| MEDIUM | 1 |

| Hermes Strength | Points |
|---|---|
| HIGH | 3 |
| MEDIUM | 2 |
| CONDITIONAL | 1 |
| LIMITED | 1 |

### Aggregate Results

| Protocol | Achilles | Hermes | Dominant Posture |
|---|---|---|---|
| IPv4 | 17 pts | 3 pts | ~85% Achilles |
| IPv6 | 11 pts | 18 pts | ~62% Hermes |

---

## The Nine Security Domains

| Domain | IPv4 | IPv6 | Verdict |
|---|---|---|---|
| Address Architecture | Achilles HIGH | Hermes HIGH | IPv6 Advantage |
| IPsec Integration | Achilles HIGH | Achilles MED + Hermes HIGH | IPv6 Advantage |
| Layer 2 Resolution | Achilles CRITICAL | Achilles HIGH + Hermes CONDITIONAL | Contested |
| Fragmentation Handling | Achilles HIGH | Achilles MED + Hermes HIGH | IPv6 Advantage |
| ICMP Dependency | Achilles MED + Hermes MED | Achilles HIGH | IPv4 Advantage |
| Address Privacy & Tracking | Achilles MED + Hermes LOW | Achilles HIGH + Hermes HIGH | Contested |
| Broadcast vs. Multicast | Achilles HIGH | Hermes HIGH | IPv6 Advantage |
| Transition Mechanisms | Achilles CRITICAL | Achilles HIGH | Both Vulnerable |
| Header Architecture | Achilles MED | Achilles MED + Hermes MED | Slight IPv6 Advantage |

---

## Navigation

**Category View** — sidebar nav on the left. Click any domain to load its full breakdown: Achilles and Hermes cards for each protocol, severity/strength badges, key technical detail, and a verdict strip. The Active Domain meter row updates simultaneously.

**Overview Matrix** — a 9-card grid showing all domains at once. Click any card to drill into Category View for that domain.

---

## Key Technical Notes

**ARP / NDP (Layer 2 Resolution)**
ARP has no authentication mechanism. Any device on the L2 domain can reply to any ARP request and claim any IP. NDP (IPv6's replacement for ARP) inherits the same trust model. SEND (RFC 3971) fixes this cryptographically but is extremely rare in production environments — hence CONDITIONAL strength.

**IPsec**
IPv4 retrofitted IPsec in 1995 (RFC 1825). IPv6 included it as a design-level requirement — but RFC 6434 (2011) downgraded the mandate from MUST to SHOULD, weakening the native advantage in practice.

**Fragmentation**
IPv4 permits fragmentation at any router in the path, enabling Teardrop-class attacks and IDS evasion. IPv6 restricts fragmentation to the source host, eliminating that class of attack. Atomic fragment attacks against IPv6 were addressed by RFC 8021 (2017).

**EUI-64 / Privacy Extensions**
SLAAC's default EUI-64 addressing embeds the device MAC in the IPv6 address, enabling persistent tracking across networks. RFC 4941 Privacy Extensions generate randomized Interface IDs and are enabled by default on most modern operating systems.

**Transition Mechanisms**
Dual-stack deployments and tunneling protocols (Teredo, 6to4, ISATAP) introduce attack surface on both sides. Teredo tunnels IPv6 over UDP port 3544, often bypassing IPv4 firewall policy. Both protocols are structurally exposed here.

---

## What This Tool Does Not Do

The Myth Meter measures structural design posture, not operational threat frequency. A CRITICAL Achilles Heel in a rarely-deployed scenario scores the same as one actively exploited at scale. For threat-frequency analysis, consult current CVE data and threat intelligence sources.

---

## Deployment

Self-contained single HTML file. No external dependencies, no build step required.

```bash
# Drop into Hugo static tools directory
cp ipv4_v_ipv6_heel_analysis.html ~/ubritsa/static/tools/

# Then publish via normal pipeline
gecc-publish
```

Access at: `https://ubritsa.com/tools/ipv4_v_ipv6_heel_analysis.html`

---

## Technical Stack

- Vanilla HTML, CSS, JavaScript — zero dependencies
- Scalable `rem`-based type system anchored at `html { font-size: 20px }`
- CSS transitions for Myth Meter bar animations on load and on nav click
- `clamp()` fluid scaling on primary headings

---

*Goblin Eaters Cyber Cavern · ubritsa.com · GitHub: [GoblinEater](https://github.com/GoblinEater)*

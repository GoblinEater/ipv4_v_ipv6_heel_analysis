---
title: "IPv6 Shifts the Balance Between Achilles and Hermes"
date: 2026-06-12
draft: false
tags: ["security", "OSI", "IPv6"]
---


Architecture, security implications, and the competency gap the industry hasn't closed.


IPv6 is the second part of Layer 3. Last week we discussed IPv4, and the design assumptions that were made, and have led to many types of attacks due to the way the protocols work. This week, we’ll investigate IPv6 — the current version of the Internet Protocol, operating at Layer 3 of the OSI model.


Back in the days of the early 1990’s it began to dawn on the industry that IPv4 was running out of steam. The two biggest challenges were the inefficient use of the class A, B, C (and D and E!!) address space, and the exploding capacity of router tables. They realized something needed to be done quickly, while deeper work began on a complete rework of IP. 


The refinements made during the “IPv4 interim solutions” work provided some very strong capabilities that prolonged the life of IPv4. CIDR (Classless Inter-Domain Routing) changed how the addressing space was used. Instead of advertising all routes that the router could reach, they are able to aggregate multiple /24 addresses as a single /16 address. This control over prefix aggregation helped alleviate the routing tables stress, and maintain performance of routers and relieve pressure on router memory. The achilles heels in IPv4 were somewhat addressed and converted to Hermes Heels. 


To help align you with the references to Achilles and Hermes - the heel was a weakness for Achilles, and Hermes had wings on his heels. They gave him strength. Think of it as a scale between Achilles Heel at one end, and Hermes Heel at he other.


![Achilles vs Hermes Heels for IPv4, and IPv6.](https://prod-files-secure.s3.us-west-2.amazonaws.com/a3b9063e-4fdf-42b2-9af6-83c3248b717e/66edbd20-5ee5-4211-8318-a92e63ea9328/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466WSONEGZK%2F20260614%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260614T222535Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMiJIMEYCIQDoVfUUG4rkjFwLtZoOrqRatCNIAkQO8GyVVuMeaU5bKAIhAJ%2B4tKjHZXhaYt53gb5rftbohFmtoA9Btfw8jErXtBrXKv8DCE0QABoMNjM3NDIzMTgzODA1IgwKE0ckJMUSTSpSt5Iq3AP%2Bek1ugL41BqeXnZwrDnyUhDvKzbGI%2F145EIdBL4bfqBlXVF%2BN%2FTjYJogBfLbqGqlzaS7N0FKb%2BPQcL3XbY7Vu7xBYBgx6x2vWCh460g7FxWv74k%2BI5wspNBXDqCq0yDWxxXv9d%2FKr3FoBwvNp3jUhzHnUftpA38FKhGq8OBh11868YnJsWYPhhSB%2BZFGz3yPDz6ncE%2FFBWmzSI1pSrcpdqgNxpuzBWP0oUhuVqadpdFqCp9EsDPdbkrWhKnNnB7YYcLgE8fqsSq1EDtK1RAjA0Rlt1o%2Bay0%2Fjg38Dh0ijXIGobR%2BYZX%2Byyp%2BJcgm5WB62RxWkXkR1i6sgGLoOq20BK9pRVGlQlNBZFIPSJbj8DPpAYfSs6mxYeuMtTSmLvHuj%2FsMeMpbKzbWge5sJ27xAfIuMC8iIubBnHkZtwEjJzyLjJMXcXtUbknv%2Bfi8vwnOQPxnvfz8JwRIiSsj9q4MqyEqCkGtv4cSW9L2VpA91KYi7ttJLsVxDCS9690WM7yZb6NiFt6ZbNNLRnuVf8XQo7jpooEkSgHFlWA4qttsAqWXxua8E21HKggjEJAfLWhnd4a4H25c1VOrt3eEZoC%2B5N5qPgvAMG2dQV0c3AtTCE7OJhv%2FeM06Gw1wEQDCHlbzRBjqkAYrwdw5VgYcc3lP2%2BlJtuHwXBJQ6ZxVrFQkhHW2lg3hYALZvcWkgmzaitgQeqtc4fvlfpz7M94SmynKbS2IXBnzU%2B3rEryKv%2FThg8hqoWOb%2FP0xdWRZQUGjVUVDBIOhmMmebYLlCG4tdR0u4R3fq5395V5GK1rnQ2gQCKpTKmIL%2FkCksgY5gRO4U2Zq%2BNSCuAu62hyREDlkHNJMFLwLyf32m%2B3Lt&X-Amz-Signature=36cc1e5634507bcd6dbddf47c91c17f2d79aa13d7bdcab20453f7fe10c5d03f3&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)


The addition of NAT (Network Address Translation) was an even bigger success than the CIDR evolution. NAT allowed a network of devices to seemingly occupy a single IP network address on the ISP network, and was allocated three private address ranges that were considered as “non-routable”. By enabling this capability, the exhaustion of IPv4 addresses took way longer than originally anticipated.


NAT also brought discord. The original concept of the internet was that intelligence belonged in the endpoints. NAT moved some of this to the core, and even broke fundamental principles of OSI, in that it smooshed together Layer 3 and Layer 4 into a single function. But the practicality of it all worked. And it was incredibly popular. 


A side benefit of the NAT function was that any host inside the NAT boundary was not directly contactable from outside. These “protected” hosts could call out to the internet, but until they called out, there was no internal mapped IP address, and associated port, that is was known as. This function alone became one of the jewels of IP exhaustion.


But so what. We’re here to talk about IPv6, the latest version that took over from IPv4. And we are. But the important thing to remember here is that IPv6 has been designed with the original principles in mind. That every host is directly contactable, that its address is routable. And that breaks how people have become accustomed to setting up security in the “IPv4 interim solution” world.


So, lets look at what IPv6 brings, and what it doesn’t. And here is a cool utility that helps understand the security implications of IPv4 and IPv6. The relative strengths and weaknesses have been identified through the lens of Achilles and Hermes. 


![Click the Image to access the live IPv4-IPv6 Achilles-Hermes Heel Analysis.](https://prod-files-secure.s3.us-west-2.amazonaws.com/a3b9063e-4fdf-42b2-9af6-83c3248b717e/cd08242b-b49d-4b72-83f8-e66f7178b9bf/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466WSONEGZK%2F20260614%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260614T222535Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEIT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMiJIMEYCIQDoVfUUG4rkjFwLtZoOrqRatCNIAkQO8GyVVuMeaU5bKAIhAJ%2B4tKjHZXhaYt53gb5rftbohFmtoA9Btfw8jErXtBrXKv8DCE0QABoMNjM3NDIzMTgzODA1IgwKE0ckJMUSTSpSt5Iq3AP%2Bek1ugL41BqeXnZwrDnyUhDvKzbGI%2F145EIdBL4bfqBlXVF%2BN%2FTjYJogBfLbqGqlzaS7N0FKb%2BPQcL3XbY7Vu7xBYBgx6x2vWCh460g7FxWv74k%2BI5wspNBXDqCq0yDWxxXv9d%2FKr3FoBwvNp3jUhzHnUftpA38FKhGq8OBh11868YnJsWYPhhSB%2BZFGz3yPDz6ncE%2FFBWmzSI1pSrcpdqgNxpuzBWP0oUhuVqadpdFqCp9EsDPdbkrWhKnNnB7YYcLgE8fqsSq1EDtK1RAjA0Rlt1o%2Bay0%2Fjg38Dh0ijXIGobR%2BYZX%2Byyp%2BJcgm5WB62RxWkXkR1i6sgGLoOq20BK9pRVGlQlNBZFIPSJbj8DPpAYfSs6mxYeuMtTSmLvHuj%2FsMeMpbKzbWge5sJ27xAfIuMC8iIubBnHkZtwEjJzyLjJMXcXtUbknv%2Bfi8vwnOQPxnvfz8JwRIiSsj9q4MqyEqCkGtv4cSW9L2VpA91KYi7ttJLsVxDCS9690WM7yZb6NiFt6ZbNNLRnuVf8XQo7jpooEkSgHFlWA4qttsAqWXxua8E21HKggjEJAfLWhnd4a4H25c1VOrt3eEZoC%2B5N5qPgvAMG2dQV0c3AtTCE7OJhv%2FeM06Gw1wEQDCHlbzRBjqkAYrwdw5VgYcc3lP2%2BlJtuHwXBJQ6ZxVrFQkhHW2lg3hYALZvcWkgmzaitgQeqtc4fvlfpz7M94SmynKbS2IXBnzU%2B3rEryKv%2FThg8hqoWOb%2FP0xdWRZQUGjVUVDBIOhmMmebYLlCG4tdR0u4R3fq5395V5GK1rnQ2gQCKpTKmIL%2FkCksgY5gRO4U2Zq%2BNSCuAu62hyREDlkHNJMFLwLyf32m%2B3Lt&X-Amz-Signature=d2aaafc8cf97ba08e1f46f6294c816eb47639ed6c9f2d0f00289acbb153ad098&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)


**1. 128-bit addressing killed the scarcity problem — and the NAT crutch with it.**


NAT was never designed as a security control, but entire generations of practitioners have become accustomed to treating it like one. IPv6 using 128 bit addressing (over the 32 bit of IPv4) sadly removes that security “gimme” by returning to the fundamental principles of IP, where every host becomes globally routable by default. This global routability of IPv6 addresses is a serious strength that any device is now contactable, but the onus falls on the deployment methodology to keep it safe. Fire-walling now becomes a host level activity, not a workgroup, nor a subnet issue. You can think of this as a new discipline of  micro-segmentation in the LAN. In addition, think about the new requirement for stateful perimeter policies that will be needed as every host that was safe behind a NAT boundary is now fully connected to the internet. The address crunch was also addressed by IPv6, and is the single biggest design assumption shift from IPv4. Yet, most practitioners won't understand what they actually lost in the shift. The protections that NAT provided, the barrier between their hosts and the dangerous internet has effectively been vaporized. Until this is explicit in security conversations, integrated in network infrastructure equipment, and configured accordingly, it will remain an achilles heel in IPv6 deployments. 


**2. SLAAC lets hosts configure themselves — no server required, no approval.**


IPv6’s answer to DHCP, Stateless Address Auto-configuration (SLAAC), means a host can join a network and self-assign a globally routable address based on information contained in a Router Advertisement and its own MAC. The design assumption is that Router Advertisements are trustworthy, but in reality they aren't. Any device can start sending Router Advertisements, and a host receiving them accepts them. This blind acceptance of address information from another host (router) is an achilles heel that both IPv4 and IPv6 share, albeit the mechanism is very different. Where IPv6 becomes an improvement over IPv4, is that the host only needs thew network prefix, ususally a /64 address, from its router in order to be able to determine its full network address. In  IPv4 the host needed a complete DHCP server function with IPv4. With IPv6 removing this DHCP server requirement from the picture simplifies the process, and also removes the achilles heels that came with it. The remaining impact of IPv6 using SLAAC and no longer running DHCP services is that there is no longer a record of which host had which address at what time. This is a real loss of visibility for IPv6 operations.


**3. NDP replaces ARP — same trust assumption, new protocol, same class of attack.**


NDP solves some of ARP's problems as it uses multicast instead of broadcast and adds Neighbor Unreachability Detection (NUD).  By employing multicast transmissions, unnecessary traffic propagation is prevented, and the hosts that receive the requests can be limited. In addition, NUD will continue to actively verify a neighbors reachability, either through traffic reception or active polling. This is a significant improvement over ARP’s expiry-based passive operation,  but, it carries the same fundamental flaw: There is no authentication on neighbor announcements. It is important to realize that the non-authentication achilles heel class survived the protocol upgrade. It is a weakness that is brought to you courtesy of the “I trust you” assumptions of the protocols. Methods such as Dynamic ARP Inspection (DAI) only work on IPv4, and that doesn’t protect IPv6. IPv6 NDP can still be prone to Neighbor Advertisement (NA) spoofing, or Router Advertisements (RA). This can still lead to fake default gateways as in IPv4, but in a very different way. This challenge extends into how IPv6 works with Duplicate Address Detection, and neighbor cache poisoning. Luckily, there are solutions for some of these problems. IPv6 employs Secure Neighbor Discovery (SeND) to add cryptographic protection of NDP messages. It just needs to be implemented in networks, which as of this time, seems to be a rare occurrence. To implement SeND, the organization would need to implement a Public Key Infrastructure (PKI) to issue and validate certificates for routers. This carries with it a re-think of many aspects beyond IPv6. There is also an NDPMon service that monitors NDP messages and looks for suspicious behavior. This can also be an effective defense mechanism. 


**4. ICMPv6 is load-bearing — you cannot block it like ICMPv4.**


In IPv4, blocking ICMP was an easy but common hardening step. While it prohibits hosts from being discovered in reconnaissance, blocking it can interfere with key functional needs of IPv4. Applying this same approach to IPV6 causes far more serious harm to the protocol.  This is because the ICMPv6 is tightly integrated with IPv6, and it brings together multiple functions that were spread out across multiple options in IPv4. This design thinking makes ICMPv6 more structurally important to IPv6 operation. In IPv6, ICMPv6 handles neighbor discovery, router discovery, PMTU discovery, and SLAAC. If the passage of ICMPv6 packets are blocked, the protocol stack breaks. Once again, the specter of “competence redefinition” raises up with a powerful roar. If implemented in IPv6 the same way as in IPv4, Neighbors can be undiscoverable, link MTU’s become invisible, routers become undiscoverable, and self addressing with SLAAC is inoperable. IPv6 forces a more nuanced firewall posture that many organizations aren't prepared for. The competence gap becomes wider, as organizations don’t have the experience in firewall settings that they have with IPv4. The mechanisms involved have changed, and existing “natural thinking” needs to be clarified, re-evaluated, and in some ways, reversed. Remember, all hosts have a routable address. Every host is on the internet.


**5. Router Advertisement attacks are the IPv6 equivalent of ARP poisoning.**


In IPv6, a rogue device can send a fake RA to announce itself as the default gateway, inject DNS servers, or force hosts onto attacker-controlled prefixes — all without authentication. The concepts of ARP poisoning we looked at in week 2 raises its ugly head again here, albeit with new operations and functions. The Achilles Heel of IPv4 has not been addressed in the new version. The important point is, something needs to be able to prohibit spoofed RA’s, as there is nothing in IPv6 that ensures they are only sent, or recognized to be from, legitimate sources. This reveals a policy gap that needs to be closed to ensure that IPv6 networking overcomes this failure mode. As for the infrastructure capability, the solution is something that an IPv6 enabled switch with IPv6 firmware can provide. This switch when deployed correctly only accepts Router Advertisements from specified, authorized, ports. Much in the same way DHCP snooping operates for IPv4, RA Guard would be the IPv6 switch based mechanism that protects against any machine sending RA announcements. This of course pre-supposes that your IPv6 implementation has invested not only in the protocol stacks on the end devices, but in the routers, and in every switch port too. This may require network switches to be replaced ahead of schedule to provide the required security protections. It must be noted that even with RA Guard enabled, there are techniques that use the extension headers to evade the defenses.


**6. Dual-stack is the transition reality — and it doubles the attack surface.**


As part of a deliberate transition to IPv6, most networks today are required to run both IPv4 and IPv6 simultaneously. In this case, every host now has two addresses, two routing paths, and two sets of firewall rules to maintain. This is happening while defenders are learning the differences of protecting IPv6 implementations, and still thinking with the models of IPv4. This is where practitioners need to check for another facet of the competency gap. Attackers only need to find the one misconfiguration the defender forgot about. As we have seen above, there are new functions that need to be addressed, and some design concepts have to be reversed. IPv6 fire-walling needs to start from the perspective of “what ICMPv6 needs to be allowed”, not from the frequently used “block all ICMP” as in IPv4. 


**7. The visibility gap: security tooling lags behind protocol deployment.**


Many IDS/IPS deployments, SIEM correlation rules, and network monitoring tools were built IPv4-first. As a consequence, there is a real possibility that IPv6 traffic may traverse the network unmonitored — not because it's encrypted, but because nobody wrote the detection rules for it, or they are not complete. While IPv6 is still maturing in the tooling, the protocol carries with it many monitoring advantages afforded by the larger address space. Being able to understand geographical or organizational locality is possible, with the subnet being part of the mechanism. It also becomes possible to separate services by address subnets, with one server providing multiple services on different addresses. This would have been considered wasteful in IPv4, but with an IPv6 subnet having more addresses than the whole of IPv4 it is easily conceivable. IPv6 also employs a 20-bit Flow Label field in the header, that lets routers identify packets that belong to the same flow, without the need to inspect upper layer headers. This is the operational reality that practitioners need to face on the job every day. Using addresses in different ways where other approaches would have been employed in IPv4.


**8. Privacy Extensions (RFC 4941) trade forensic visibility for user privacy.**


Reaching back in to point 2, we have to deal with a twist that IPv6 brings. Looking at RFC 4941, IPv6 has a real capability to allow temporary, randomized interface identifiers. This capability was intentionally built into IPv6 to enable privacy and protection of identity. This implementation was designed in to protect civil liberties and is required on cases where organizations have legitimate privacy concerns. These interface identifier changes are recognized as making it harder to track users across sessions — which is the point of the capability being ratified. This capability also complicates incident response and attribution. With a non-consistent network address driven by the changing interface identifier, network forensics becomes much more complex. The competency gap suffers a backward step here, and the Achilles Heel for defenders is a real one that has been designed in to protect user privacy.


**9. Extension headers create parsing complexity — and evasion opportunity.**


IPv6 replaced IPv4's predefined set of options (but variable length - up to 40 bytes) with a chain of extension headers. While this provides greater flexibility, and functionality, Firewalls and IDS must now walk the entire chain of extension headers to find the upper-layer protocol. These extension headers are recommended to appear in a specific order, but the receiving host must be able to accept and process the headers in any order. These extension headers provide real capabilities that IPv4 did not encompass. The headers can enable features like Mobile IPv6, IPSec integration, and traffic engineering data. This is integral to IPv6, not a bolt on patch job that IPv4 required. This opens the possibility that the attacker can use malformed or deeply nested extension headers to evade inspection. Once again, the competency gap of todays defenders is being stretched, along with the abilities of the tools they have been provided. The design-for-flexibility created a new achilles heel that helps attackers design-for-evasion.


---
layout: blog-post
title: "What the Interns Built This Summer"
date: 2026-08-10
author: FP Launchpad
blurb: >-
  Our summer interns formalized school arithmetic in Lean, added biodiversity data to CoRE Stack,
  found and fixed a subtle bug in a verified CRDT, pushed OxCaml cryptography toward C speeds, and
  model-checked lock-free data structures.
---

<style>
.resource-links {
  margin: 0.75rem 0 1.5rem 0;
}
.resource-btn {
  display: inline-block;
  font-size: 0.85rem;
  font-weight: 600;
  color: #333;
  background: #f6f6f6;
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 0.25rem 0.7rem;
  margin: 0 0.4rem 0.4rem 0;
  text-decoration: none;
}
.resource-btn:hover {
  background: #ececec;
}
</style>

We hosted eight interns this summer, including three through IIT Madras's Summer Fellowship Programme. Here is some of what they built.

## Learn2Lean

**Anubhav Paul**, an undergraduate at [IIT Delhi](https://home.iitd.ac.in/), formalized the arithmetic algorithms every schoolchild learns in [Lean 4](https://lean-lang.org/), and turned the proofs into a teaching tool. He built one representation, a digit list checked against a single `toNat` correctness function, and proved nine algorithms against it: addition, subtraction, multiplication, long division, divisibility tests, [Euclid's GCD](https://en.wikipedia.org/wiki/Euclidean_algorithm), and square roots.

The result is [**Learn2Lean**](https://unordinary19.github.io/Lean_formalization/), an interactive web book. Each chapter pairs a worked example with a [ProofWidgets](https://leanprover-community.github.io/mathlib4_docs/ProofWidgets.html) visualization inside the Lean infoview, plus worksheets that check a reader's own attempt against a live local Lean checker. Anubhav built it with [Pranav Ramesh](https://github.com/pranavramesh2003), aimed at readers who don't yet think like type theorists. A talk based on the project was [accepted at IndiaFOSS 2026](https://fossunited.org/c/indiafoss/2026/cfp/9qjtkvb2gi).

<p class="resource-links">
<a class="resource-btn" href="https://github.com/UnOrdinary19/Lean_formalization" target="_blank">Repo</a>
<a class="resource-btn" href="https://unordinary19.github.io/Lean_formalization/" target="_blank">Book (live)</a>
<a class="resource-btn" href="https://fossunited.org/c/indiafoss/2026/cfp/9qjtkvb2gi" target="_blank">Talk (IndiaFOSS)</a>
</p>

## CoRE Stack biodiversity

**S Naveen**, from [IIIT Manipur](https://www.iiitmanipur.ac.in/), and **Uttkarsh Tiwari**, from [NIT Mizoram](https://www.nitmz.ac.in/), built a biodiversity layer for [CoRE Stack](https://core-stack.org/), the environmental-planning platform our [ESG](https://en.wikipedia.org/wiki/Environmental,_social,_and_corporate_governance) group builds with [Prof. Aaditeshwar Seth](https://www.cse.iitd.ac.in/~aseth/)'s team at IIT Delhi. They used [GBIF](https://www.gbif.org/what-is-gbif), the Global Biodiversity Information Facility's archive of georeferenced species occurrences: download and clean occurrences around a block's micro-watershed layer, look up [IUCN Red List](https://www.iucnredlist.org/) status per species, and join everything spatially inside [Google Earth Engine](https://earthengine.google.com/), the same engine every other CoRE Stack layer runs in.

Sixteen indicators are now [validated end to end](https://drive.google.com/file/d/1Ddvf20vGJzcoCzNMc-KAk5k-o_67laZN/view?usp=drivesdk) on two real blocks, Jamui in Bihar and Hassan in Karnataka, rendering correctly as a [GeoServer](https://geoserver.org/) choropleth from the [`computing/gbif` module](https://github.com/fplaunchpad/core-stack-backend/tree/wip-feature-ocaml-geocompute/computing/gbif). It is still on a feature branch of `core-stack-backend`, awaiting merge. Naveen is continuing the work as an exchange student for his final year of BTech at [IIT Madras](https://www.iitm.ac.in/), and we are beginning closer, more frequent collaboration with Seth's team in Delhi.

<p class="resource-links">
<a class="resource-btn" href="https://drive.google.com/file/d/1Ddvf20vGJzcoCzNMc-KAk5k-o_67laZN/view?usp=drivesdk" target="_blank">Report (PDF)</a>
<a class="resource-btn" href="https://github.com/fplaunchpad/core-stack-backend/tree/wip-feature-ocaml-geocompute/computing/gbif" target="_blank">Module (GitHub)</a>
</p>

## Tombstone-free CRDTs

**Harisankar Binod**, from [NISER Bhubaneswar](https://www.niser.ac.in/), worked on the part of [distributed systems](https://en.wikipedia.org/wiki/Distributed_computing) that makes Google Docs and Notion-style collaborative editing possible: [RGA](https://doi.org/10.1016/j.jpdc.2010.12.006) and its tombstones, the permanent record of deleted-but-unremovable characters that a heavily-edited document accumulates. Working in [Sal](https://fplaunchpad.org/sal/), our [Lean 4](https://lean-lang.org/) verification framework for [replicated data types](https://en.wikipedia.org/wiki/Conflict-free_replicated_data_type), he designed a tombstone-free "rehoming" variant and proved it [RA-linearizable](https://en.wikipedia.org/wiki/Linearizability) with zero uses of `sorry`. Then he found a counterexample: four sequential edits on a single replica where a character the user never touched silently changes position.

The bug survived the proof because both sides of the correctness comparison were built from the same step function. Catching it required comparing against RGA's own published specification instead. The fix, **EmbedRGA**, replaces mutable anchors with immutable birth coordinates computed once at insertion. It extends for free to rich text ([Peritext](https://www.inkandswitch.com/peritext/)), where the same bug would otherwise let a delete silently reformat untouched text. Harisankar wrote up the full story, including [a week at the LeanLang Summer School](https://methaphur.github.io/blogs/leanlang-summer-school/), on his [own blog](https://methaphur.github.io/blogs/replicated-growable-array/), and gave an [internal talk on it](/assets/talks/harisankar-b-tombstone-free-rga.pdf).

<p class="resource-links">
<a class="resource-btn" href="https://github.com/fplaunchpad/sal" target="_blank">Repo (Sal)</a>
<a class="resource-btn" href="https://methaphur.github.io/blogs/replicated-growable-array/" target="_blank">Blog post</a>
<a class="resource-btn" href="/assets/talks/harisankar-b-tombstone-free-rga.pdf" target="_blank">Slides (PDF)</a>
</p>

## Cryptography in OxCaml

**V. Krishnan**, from [NIT Jamshedpur](https://www.nitjsr.ac.in/), measured how close OCaml, and its [OxCaml](https://oxcaml.org/) extension, can get to C for performance-critical cryptography, without giving up OCaml's safety guarantees. Every optimization in his [technical report](https://drive.google.com/file/d/154SGHgUQp1JcT7LucBMZ2y2JqkcLOJxv/view?usp=sharing) was [assembly-guided](https://en.wikipedia.org/wiki/Assembly_language): a throughput change with no assembly explanation was treated as noise.

The project moved from an XOR [stream cipher](https://en.wikipedia.org/wiki/Stream_cipher) (about 0.50x C) through [AES](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard) and Rijndael (parity with C, once `Int32` boxing was eliminated) to [ChaCha20](https://en.wikipedia.org/wiki/ChaCha20-Poly1305) and [SHA-256](https://en.wikipedia.org/wiki/SHA-2), where OCaml's tagged-integer representation forces a mask after nearly every 32-bit operation. OxCaml's unboxed `int32#` type removed that overhead directly, for a 39% throughput gain on SHA-256. Neither compiler recognizes the [rotate idiom](https://en.wikipedia.org/wiki/Circular_shift) `(x lsl n) lor (x lsr (32-n))`: it compiles to three instructions instead of a single `roll`. That is now a concrete request with the OxCaml compiler team. The [full report and code](https://github.com/fplaunchpad/OxCaml-Crypto) are public, and a related effort [implementing crypto natively in OxCaml](https://github.com/fplaunchpad/oxcaml-crypto-study) continues with Avik Shakhari and Anirudh Sudhir.

<p class="resource-links">
<a class="resource-btn" href="https://github.com/fplaunchpad/OxCaml-Crypto" target="_blank">Repo</a>
<a class="resource-btn" href="https://drive.google.com/file/d/154SGHgUQp1JcT7LucBMZ2y2JqkcLOJxv/view?usp=sharing" target="_blank">Report (PDF)</a>
<a class="resource-btn" href="https://github.com/fplaunchpad/oxcaml-crypto-study" target="_blank">Continuing work</a>
</p>

## Concurrent data structures

**Zeeshan Mohammed Rangrej**, from [IIT Palakkad](https://iitpkd.ac.in/), took [CS6868](https://fplaunchpad.org/cs6868_s26/), our concurrent programming course, before writing any test code. Working with [Navaneeth Nambiar](https://github.com/curche), he wrote [DSCheck test cases for a lock-free Treiber stack](https://github.com/fplaunchpad/cs6868_s26/pull/9). Using [DSCheck](https://github.com/ocaml-multicore/dscheck)'s `TracedAtomic`, he exhaustively explored every valid interleaving of concurrent push and pop operations on [OCaml domains](https://v2.ocaml.org/manual/parallelism.html). No counterexample trace means a sequential ordering exists that explains every concurrent execution: the definition of [linearizability](https://en.wikipedia.org/wiki/Linearizability). He extended the same approach to a lock-free linked list.

He validated the checks against a deliberately buggy implementation of the list, and confirmed DSCheck caught the injected fault every time. Reading [Godefroid's thesis](https://patricegodefroid.github.io/public_psfiles/thesis.pdf) on systematic exploration of concurrent programs pointed at DSCheck's next gap: extending it from [safety properties](https://en.wikipedia.org/wiki/Safety_and_liveness_properties) to liveness properties, [now an open issue](https://github.com/fplaunchpad/cs6868_s26/issues/10) on the course repository. Zeeshan is currently reading how [Software Transactional Memory](https://en.wikipedia.org/wiki/Software_transactional_memory) implementations track read and write sets and detect conflicts, with an eye toward implementing and testing one himself. His internship has ended, but he continues as a remote collaborator.

<p class="resource-links">
<a class="resource-btn" href="https://github.com/fplaunchpad/cs6868_s26/pull/9" target="_blank">Pull request</a>
<a class="resource-btn" href="https://drive.google.com/file/d/1OI9mBBCPaJSNmHR9LWnj4sTCYQVFliZM/view?usp=drivesdk" target="_blank">Report (PDF)</a>
<a class="resource-btn" href="https://github.com/fplaunchpad/cs6868_s26/issues/10" target="_blank">Open issue</a>
</p>

## Separation logic

**Chaitanya Agarwal**, a PhD student at [NYU](https://www.nyu.edu/), visited for the summer to explore formal-verification angles connected to his PhD thesis, working with [Prof. Aishwarya](https://cystar.iitm.ac.in/aishwarya-inner-people/) and KC. His most visible contribution was two internal talks, [Introduction to Separation Logic](/updates/#talk-introduction-to-separation-logic) and [its sequel](/updates/#talk-introduction-to-separation-logic-part-ii) a week later, both adapted from the [Iris tutorial at POPL 2021](https://gitlab.mpi-sws.org/iris/tutorial-popl21/-/blob/master/talks/iris-popl21-tutorial.pdf), the [ACM symposium](https://en.wikipedia.org/wiki/Symposium_on_Principles_of_Programming_Languages) where Iris itself was introduced.

<p class="resource-links">
<a class="resource-btn" href="/updates/#talk-introduction-to-separation-logic" target="_blank">Talk</a>
<a class="resource-btn" href="/updates/#talk-introduction-to-separation-logic-part-ii" target="_blank">Talk, part II</a>
<a class="resource-btn" href="https://gitlab.mpi-sws.org/iris/tutorial-popl21/-/blob/master/talks/iris-popl21-tutorial.pdf" target="_blank">Iris tutorial slides (PDF)</a>
</p>

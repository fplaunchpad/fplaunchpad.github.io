---
layout: blog-post
title: "FP Launchpad update: research, teaching, and community"
date: 2026-09-14
author: KC Sivaramakrishnan
permalink: /blog/2026-09-fp-launchpad-update/
published: true
blurb: >-
  Six fellows have joined FP Launchpad. An update on our research,
  OCaml NPTEL course, environmental software projects, and upcoming events.
---

Five months after the [FP Launchpad kickoff on 13 April]({% post_url 2026-03-30-fp-launchpad-kickoff %}), here is where things stand.

- Six [fellows](/team/) have joined from a pool of 48 applicants. We also hosted eight summer interns and celebrated two PhD graduations.
- Our [online OCaml course](https://onlinecourses.nptel.ac.in/e-learning/course/noc26_cs90) now has about 1,200 students enrolled.
- Research highlights include two papers, [FIDES](https://kcsrk.info/papers/fides_asiaccs_2026.pdf) and [Sal](https://kcsrk.info/papers/sal_jan26.pdf), and work with Microsoft Research on a [verified generational garbage collector](https://risemsr.github.io/blog/2026-08-21-gc/) integrated with OCaml's bytecode runtime.
- Coding agents are helping us build implementations and proofs, while we investigate how to improve human understanding of machine-written theorems and proofs.
- We have [six talks and workshops accepted](/indiafoss-2026/) at [IndiaFOSS](https://fossunited.org/indiafoss/2026) and are preparing to host [India's first major OCaml conference]({% post_url 2026-09-07-fun-ocaml-2027-bangalore %}) in January.

## Education and Training

Learning to build and maintain systems takes time, access to substantial projects, and people to learn from. Our aim is to give more early-career researchers in India that opportunity through full-time research positions and fellowships.

### The team

In March, we [invited applications for our first post-baccalaureate fellowship]({% post_url 2026-03-06-applications-open-post-bacc-fellowship %}). Fellows work full-time at IIT Madras, developing their research interests through systems projects and open-source contributions. They primarily use [OCaml](https://ocaml.org/), a functional-first programming language, and [OxCaml](https://oxcaml.org/), which extends OCaml with features for safe systems programming.

The fellowship received **48 applications**. We shortlisted **12 candidates**, with a selection process that included two rounds of interviews. We made **seven offers**, and **six fellows have joined**:

- **[Pragyansh Chaturvedi](https://people.ubuntu.com/~r41k0u/portfolio/)**, from IIT Roorkee, is an Ubuntu maintainer with experience in open-source systems development.
- **[Avik Shakhari](https://github.com/recluse099)**, from Chennai Mathematical Institute, is interested in type theory and formal methods, and works on programming-language approaches to security.
- **[Smayan Agarwal](https://github.com/SmayanAgarwal)**, from Ashoka University, combines interests in mathematics and programming languages with a focus on social good.
- **[Dhruv](https://github.com/ButteryPaws)**, from IIT Bombay, joins after working in finance and is exploring security and low-level systems.
- **[Kaustubh Maske Patil](https://kaustubh.page)**, from BITS Pilani, is a generalist programmer with interests in free and open-source software, self-hosting, and functional programming.
- **[Vipul Cariappa](https://vipulcariappa.xyz/)**, from Ramaiah University, worked on Python and C/C++ interoperability at CERN and is interested in compilers and developer tools.

We were disappointed that none of the candidates shortlisted in this round were women. We will soon open a focused application round for the FP Launchpad fellowship specifically for women.

**[Akhil Tulluri](/team/)** has joined as a full-time researcher. Following his master's studies at Northeastern University, he is working on the performance and formal verification of OCaml's garbage collectors, alongside [Sheera Shamsu](/team/), who completed her PhD in July.

**[Vimala Soundarapandian](https://sites.google.com/view/vimala90/)** has joined as a Research Scientist after completing her PhD. Akhil, Vimala, and the six fellows join existing research staff **[Alina Banerjee](https://www.blue-indus.in/)** and **[Navaneeth Nambiar](https://github.com/curche)**.

**Sanjay Karanth**, our Technical Program Manager, coordinates project updates and helps the group plan and follow through on its work. You can read more about the wider group on our [team page](/team/).

### Summer internships

Internships give students a chance to try research through a focused project. We hosted eight interns this summer, including three through IIT Madras's Summer Fellowship Programme. Here are some of their projects.

Anubhav Paul, an undergraduate at IIT Delhi, built [Learn2Lean](https://unordinary19.github.io/Lean_formalization/), an interactive introduction to formal verification through elementary arithmetic. Starting with familiar algorithms such as addition and long division lets learners concentrate on why an algorithm works and how to express that argument in [Lean](https://lean-lang.org/). The book pairs explanations and proofs with step-by-step visualisations and exercises; its [source is available](https://github.com/fplaunchpad/Learn2Lean).

Zeeshan Mohammed Rangrej, from IIT Palakkad, worked with Navaneeth on adding [DSCheck](https://github.com/ocaml-multicore/dscheck) tests to the materials for IIT Madras's [concurrent programming course (CS6868)](https://fplaunchpad.org/cs6868_s26/). DSCheck explores different ways that concurrent operations can interleave, exposing bugs that an ordinary test run might miss. The aim is to let students check their reasoning about concurrent algorithms against executable examples.

Harisankar Binod, from NISER Bhubaneswar, worked on collaborative text editing using [Sal](https://fplaunchpad.org/sal/), our verification framework for replicated data types. His [project write-up](https://methaphur.github.io/blogs/replicated-growable-array/) follows the design, a proof, and the discovery that the proven property missed behaviour a text editor needs. He also wrote about his [week at the LeanLang Summer School](https://methaphur.github.io/blogs/leanlang-summer-school/).

S Naveen, from IIIT Manipur, and Uttkarsh Tiwari, from NIT Mizoram, worked on biodiversity analysis for [CoRE Stack](https://core-stack.org/), which provides environmental data and tools for local planning. They built a pipeline using data from the [Global Biodiversity Information Facility (GBIF)](https://www.gbif.org/what-is-gbif) and ran it for Hassan and Jamui. Naveen is now continuing his fourth year at IIT Madras as an exchange student.

### OCaml on NPTEL

To reach beyond the fellowship, we need teaching material that people can use wherever they study. That is the role of our course on the [National Programme on Technology Enhanced Learning (NPTEL)](https://nptel.ac.in/) and the [open textbook](https://fplaunchpad.org/ocaml_nptel/) we are building alongside it.

Our online course, [*Functional Programming with OCaml*](https://onlinecourses.nptel.ac.in/e-learning/course/noc26_cs90), has about **1,200 students**. It offers 36 hours of recorded lectures, with the option to take an in-person, proctored exam for certification. I teach the course, with PhD student Sai Venkata Krishnan and FP Launchpad Research Scientist Vimala Soundarapandian as teaching assistants.

Learning a language requires trying programs and seeing what happens when you change them. In our [interactive textbook](https://fplaunchpad.org/ocaml_nptel/), you can edit and run OCaml and OxCaml examples beside the explanation, without first installing a compiler. Quizzes and exercises let you check your understanding. The twelve-week material develops functions, data, modules, and testing before moving to systems topics, including OxCaml and MirageOS. I describe the approach in [*An O(x)Caml book that runs*](https://kcsrk.info/ocaml/oxcaml/teaching/nptel/llm/2026/06/13/an-oxcaml-book-that-runs/). I will also present this work at IndiaFOSS on [26 September at 10:45 in Hall 1](https://fossunited.org/dashboard/schedule/indiafoss/2026), in my talk [*Textbooks that run: interactive, zero-install CS education in the browser*](https://fossunited.org/c/indiafoss/2026/cfp/8s4g5qj3oq).

The fellows use the same textbook in their training and contribute corrections as they work through it. The [source is open](https://github.com/fplaunchpad/ocaml_nptel), so teachers and learners elsewhere can use it and contribute fixes.

To attract the next cohort of researchers to FP Launchpad, we have announced **[seven paid Summer 2027 internships](https://www.linkedin.com/posts/cystariitm_iitmadras-nptel-fplaunchpad-activity-7475033218094768128-BwDM)** for students from the course: five for the top certified students, plus two additional places for top certified women students.

### OCaml workshops

We are adapting the textbook for people trying OCaml in a shorter, guided session. Alina Banerjee, Vimala Soundarapandian, and Kaustubh Maske Patil are preparing [*Fun and Profit with OCaml*](https://fplaunchpad.org/indiafoss-2026-ocaml-workshop/). This three-hour beginner workshop runs on 25 September at [IndiaFOSS](https://fossunited.org/indiafoss/2026), a free and open-source software conference in Bengaluru. It covers OCaml basics, data types and pattern matching, and modules, using the textbook's runnable examples and a slide view for teaching.

Smayan contributed interactive [Game of Life](https://fplaunchpad.org/indiafoss-2026-ocaml-workshop/05-game-of-life.html) and [Tic-Tac-Toe](https://fplaunchpad.org/indiafoss-2026-ocaml-workshop/04-tic-tac-toe.html) exercises. Participants can use the final part of the session to build one of the games. The [workshop repository](https://github.com/fplaunchpad/indiafoss-2026-ocaml-workshop) is available for anyone who wants to work through the material or use it in another setting.

The workshop material also includes an [OCaml Joy lab](https://fplaunchpad.org/indiafoss-2026-ocaml-workshop/06-joy.html), where learners create pictures by composing shapes and transformations. Sudha Parimala created the [library](https://github.com/sudha247/ocaml-joy), and Kaustubh has contributed since 2023. He also used it to illustrate his [Tamil crash course](https://kaustubh.page/learn-tamil/). Sudha started as a research engineer at IIT Madras in 2019 before moving to [Tarides](https://tarides.com/). Her library now helps newcomers learn OCaml.

## Research

A central research question for FP Launchpad is how people can choose and understand the properties established by machine-written theorems and proofs. We are exploring this question as we pursue the charter's research goal: compilers, runtime systems, and security mechanisms with guarantees we can understand and maintain.

### Garbage collection

When an OCaml program no longer needs an object, the garbage collector can reclaim its memory. Getting this wrong can corrupt data that the program is still using, which is why verifying the collector is an important part of our charter's goal of a verified runtime for OCaml and OxCaml.

[Sheera Shamsu](/team/) graduated with a PhD in July. Her doctoral research produced a mechanically verified collector for OCaml, described in [*A Mechanically Verified Garbage Collector for OCaml*](https://doi.org/10.1007/s10817-025-09721-0), published in the *Journal of Automated Reasoning* in 2025. An earlier port of her collector to current F* and Pulse was a case study in the Microsoft Research team's [*Proofs Promptly: Proof-Oriented Programming with AI Agents (Experience Report)*](https://doi.org/10.1145/3828709), presented at the International Conference on Functional Programming (ICFP) in August 2026.

Working with Nik Swamy at Microsoft Research, Sheera and I helped plan the collector's extension into a generational collector, which handles newly allocated and longer-lived objects separately. Nik used coding agents to develop the implementation and proofs in the F* proof-oriented programming language and its concurrent separation logic Pulse, with human review of the specifications. His [account of the work](https://risemsr.github.io/blog/2026-08-21-gc/) describes the progression from the original collector through memory allocation and object movement to integration with OCaml 4.14's bytecode runtime.

The [implementation and proofs are public](https://github.com/FStarLang/pulse-verified-gc). Under the collector's heap and interface assumptions, the proof establishes that a successful collection preserves reachable objects, their data, and their connections, even when objects move. Sheera and Akhil Tulluri are continuing our garbage-collector implementation and verification work.

For a collector to be useful, we also need to understand its performance. OCaml's existing collector is highly tuned and closely tied to the runtime, which makes trying a different design a substantial engineering task. Our [OCaml–MMTk integration](https://github.com/fplaunchpad/ocaml-mmtk), which Pragyansh now leads, addresses this by connecting OCaml to the [Memory Management Toolkit (MMTk)](https://www.mmtk.io/), a framework with several collectors to experiment with.

Using coding agents, we went from the first backend to an OCaml-like collector, **Bactrian**, running inside MMTk in roughly two weeks. Bactrian resembles OCaml's own collector so we can distinguish the cost of the interface from the choice of collection algorithm. The interface now supports finalisers, weak references, and ephemerons: features that control cleanup and whether references keep objects alive. We use OCaml's existing test suite to check it as it develops.

Performance optimisation is still work in progress. Agentic performance tuning has been challenging: it requires repeated measurements across workloads and memory settings to establish whether a change improves the balance between memory use and runtime. Since the initial build, Pragyansh has been adding instrumentation and tuning Bactrian. His experiments compare CPU cost, collection pauses, memory use, and how runtime changes as more memory is made available. There is still memory overhead to account for, and the memory-versus-runtime tradeoff does not yet match stock OCaml. Pragyansh will present the work at [Innovations in Compiler Technology (IICT) 2026](https://compilertech.org/), on 2–3 October at IISc, Bengaluru.

To evaluate these tradeoffs, we need representative workloads. [Tarides](https://tarides.com/) is developing the benchmark suites in [ocaml-bench](https://github.com/ocaml-bench): [macro-benches](https://github.com/ocaml-bench/macro-benches) contains application workloads, while [benches](https://github.com/ocaml-bench/benches) contains smaller tests of specific compiler and runtime behaviour. Navaneeth Nambiar and MS student B Sanjeev Reddy are investigating how to select a representative set of workloads from these benchmarks using profiling data. The goal is to make performance evaluation more manageable while retaining coverage of different program behaviours. [Navaneeth's accepted IndiaFOSS talk](https://fossunited.org/c/indiafoss/2026/cfp/6aasju7noq) will discuss this work.

### Specifications and proofs

Replicated data types let different copies of data change independently and merge later. Having those copies agree is useful, but we also need to know that their merged result preserves the intended behaviour of the application. My April keynote at the Workshop on Principles and Practice of Consistency for Distributed Data (PaPoC), and accompanying post [*From Convergence to Confidence*](https://kcsrk.info/verification/rdts/lean/2026/04/28/from-convergence-to-confidence/), examine what it means to choose the right property to prove.

Vimala Soundarapandian also graduated with a PhD in July, for her work on verifying replicated data types. Our paper [*Sal: Multi-modal Verification of Replicated Data Types*](https://kcsrk.info/papers/sal_jan26.pdf), by FP Launchpad alumnus Pranav Ramesh, Vimala, and me, was presented at PaPoC in April. [Sal](https://fplaunchpad.org/sal/) uses [Lean](https://lean-lang.org/), a programming language and proof assistant, to check correctness properties. It combines automated proofs with testing and visual counterexamples that help developers understand failures. We have now verified non-trivial implementations of collaborative editing algorithms such as [Replicated Growable Array (RGA)](https://doi.org/10.1016/j.jpdc.2010.12.006), [Fugue](https://arxiv.org/abs/2305.00583), [FugueMax](https://arxiv.org/abs/2305.00583), [Peritext](https://www.inkandswitch.com/peritext/), and [AegisSheet](https://doi.org/10.1145/3806077.3806695). Harisankar's summer project illustrates why this matters: his initial design satisfied its proven property, yet deleting one character could reorder the remaining text.

Vimala and PhD student Durwasa Chakraborty have also applied Lean to query translation: their QueryBridge project, which studies correctness of translation between JSON and SQL queries, [won second prize at the LeanLang hackathon at IISc]({% link _blog/2026-05-08-querybridge-leanlang-hackathon.md %}).

The question of what a guarantee means is also central to a new project with [Pramaana Labs](https://www.pramaanalabs.ai/) on explainable, verifiable cryptography. Avik and MS student Vishakh Desai are working on it with IIT Madras faculty member [Aishwarya Thiruvengadam](https://cystar.iitm.ac.in/aishwarya-inner-people/) and me. Starting with voting protocols, we plan to explain security guarantees by showing what happens when a protocol or its assumptions change. The goal is to help an auditor judge whether a formal guarantee covers the property they care about.

Nandha Gopi Krishna, an undergraduate at IIT Madras, and Vipul are investigating the same question for agent-built compilers. They are developing a compiler from a small functional language with integers to a stack-based target language, with verification as part of the development. Keeping the language small makes it possible to examine what the agent has implemented and what its proofs establish.

### Mixed-language security

Some applications need protection even when a component goes wrong. OCaml programs often depend on C libraries, where a memory error can compromise the rest of the application. Rewriting every dependency is rarely a practical starting point, so we are studying how to contain the consequences of those errors.

Our paper [*FIDES: End-to-end Compartments for Mixed-language Systems*](https://doi.org/10.1145/3779208.3805988), by Sai Venkata Krishnan, Arjun Menon, Chester Rebeiro, and me, has been published at the ACM Asia Conference on Computer and Communications Security (AsiaCCS) 2026. FIDES restricts which code and data each component can access, while supporting OCaml features such as functions passed as values and exceptions alongside C code. The [paper](https://kcsrk.info/papers/fides_asiaccs_2026.pdf) describes hardware and compiler support on a modified Shakti RISC-V processor, evaluated with MirageOS applications. Dhruv and Prakhand Patel, an MTech student at IIT Madras, are investigating how to prove FIDES's security guarantees in Lean, with the longer-term aim of extending the verification down to the Shakti hardware designs.

Avik and Anirudh Sudhir, who joined as an intern in August, are investigating whether we can [implement cryptographic algorithms directly in OxCaml](https://github.com/fplaunchpad/oxcaml-crypto-study), retaining the benefits of a high-level language without sacrificing performance. This could also open a route to formally verifying these implementations using frameworks such as [Hax](https://github.com/cryspen/hax) and [Aeneas](https://aeneasverif.github.io/), which currently target Rust and would need to be extended to support OxCaml.

Avik is also investigating how to track sensitive information through programs. Together with the [Pramaana Labs](https://www.pramaanalabs.ai/) collaboration, these efforts focus on expressing security requirements precisely and connecting them to implementations.

## Systems and Community

Our charter calls for research grounded in systems that people use. Working on an existing system means understanding how people use it and what our changes would mean for the people maintaining it. Our environmental-planning work starts with such a collaboration.

### CoRE Stack

[CoRE Stack](https://core-stack.org/) provides environmental data and software tools to help communities make decisions about land, water, and climate resilience. We are working with [Prof. Aaditeshwar Seth](https://www.cse.iitd.ac.in/~aseth/)'s team at IIT Delhi. The longer-term aim is to express environmental computations as reusable functional models in OCaml and OxCaml. Understanding the existing Python implementation and establishing tests give us a basis for comparing those models with the system people already use.

Naveen and Uttkarsh's summer project brought biodiversity data into a pipeline for CoRE Stack. Alongside this work, Alina visited IIT Delhi in late June and early July; she and the fellows are now adding tests and type annotations to catch errors and make the Python code easier to maintain. Kaustubh has submitted an [installation fix](https://github.com/core-stack-org/core-stack-backend/pull/1210), and the team is examining how land-use categories are represented in the code.

To investigate how new data sources might fit into that software, Smayan is preparing to compare CoRE Stack's approach to classifying land use with an approach based on [Tessera](https://github.com/ucam-eo/geotessera), which uses satellite imagery. Naveen is exploring biodiversity-related questions and how CoRE Stack's Commons Connect application is used.

### IndiaFOSS and FUN OCaml

The next opportunity to share the research and teaching work with developers is [IndiaFOSS](https://fossunited.org/indiafoss/2026), where FP Launchpad has [six talks and workshops accepted](/indiafoss-2026/). Alongside the OCaml workshop, I will speak about executable textbooks. In the Compilers, Programming Languages and Systems devroom:

- Pragyansh will present **[PythonBPF](https://fossunited.org/c/indiafoss/2026/cfp/299lpkmuqh)**, which he co-created to let developers write programs for the Linux kernel using a subset of Python. The talk covers new support for loops, custom functions, and more map types.
- Durwasa will give **[LGTM Is Not A Theorem](https://fossunited.org/c/indiafoss/2026/cfp/8cbv4mpi6o)**.
- Former intern Anubhav Paul will introduce **[formal verification through elementary arithmetic](https://fossunited.org/c/indiafoss/2026/cfp/9qjtkvb2gi)**.
- Navaneeth will present **[Benchmarking can be hard, here's why we're still creating a new one for OCaml](https://fossunited.org/c/indiafoss/2026/cfp/6aasju7noq)**, discussing the work on representative workload selection.

The workshops take place on 25 September, ahead of the main conference on 26–27 September. See the [event programme](https://fossunited.org/indiafoss/2026) for the latest schedule. We are also sponsoring [SEGFAULT](https://segfault.compilertech.org/#tracks), a compiler and programming-languages hackathon with a functional-programming track, whose finale takes place alongside IICT in October.

FP Launchpad will host [**FUN OCaml on 25–26 January 2027**](https://fun-ocaml.com/), at the MLR Convention Centre in Bengaluru. This will be the first FUN OCaml, and the first major OCaml conference, in India. Talks, workshops, and open-source hacking will give participants time to learn from other OCaml users and work on projects together. [Registration is open](https://conf.code.iitm.ac.in/conf/Fun_OCaml_2027/login), and the [call for proposals](https://cfp.fun-ocaml.com/fun-ocaml-2027-bengaluru/cfp) runs until 30 September.

## Looking ahead

We will open the women's fellowship round soon. We are also planning a winter school on programming languages at IIT Madras in December, with programme details to follow. We hope to meet many of you there, at IndiaFOSS and IICT, or at FUN OCaml in January.

If you teach programming, try the [OCaml textbook](https://fplaunchpad.org/ocaml_nptel/) or reuse the [workshop material](https://github.com/fplaunchpad/indiafoss-2026-ocaml-workshop). We also welcome [FUN OCaml proposals](https://cfp.fun-ocaml.com/fun-ocaml-2027-bengaluru/cfp) by 30 September. To hear about future updates, fellowship openings, and events, [subscribe to our newsletter](mailto:contact@fplaunchpad.org?subject=Subscribe%20to%20Newsletter) by emailing contact@fplaunchpad.org with the subject “Subscribe to Newsletter”.

We thank Jane Street for supporting FP Launchpad.

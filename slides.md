---
marp: true
theme: default
size: 16:9
paginate: true
html: true
title: Single Ownership Principle – understanding SRP through Student
author: Nodirbek Usmanov
description: A Student example and three further classes explain SRP and SOP as two ways to identify the same change boundary.
footer: Nodirbek Usmanov | Befico GmbH
style: |
  section { background: #fff; color: #171717; font-family: Arial, Helvetica, sans-serif; font-size: 30px; padding: 65px 70px 70px; justify-content: flex-start; }
  h1 { font-size: 43px; font-weight: 500; color: #a47b00; line-height: 1.13; margin: 0 0 30px; }
  h2 { font-size: 30px; font-weight: 500; margin: 10px 0 20px; }
  p { margin: 8px 0 18px; }
  strong { font-weight: 700; }
  a { color: #6f5700; }
  footer { font-size: 15px; left: 70px; bottom: 22px; color: #666; }
  section::after { font-size: 15px; color: #888; }
  section:not(.cover):not(.photo)::before { content: ''; position: absolute; left: 70px; right: 70px; top: 40px; border-top: 1px solid #999; }
  section.diagram > p { text-align: center; }
  section.diagram > p:has(img) { margin-top: 12px; }
  section.diagram img { max-width: 100%; max-height: 365px; object-fit: contain; }
  section.diagram.tight img { max-height: 310px; }
  section.diagram.highlight img { max-height: 400px; }
  section.diagram.refactor img { max-height: 430px; }
  section.quote { justify-content: center; }
  section.quote h1 { font-size: 30px; color: #444; position: absolute; top: 75px; left: 70px; }
  section.quote blockquote { border: 0; font-size: 47px; text-align: center; line-height: 1.35; padding: 0; margin: 80px 35px 25px; }
  section.quote .attribution { text-align: center; font-size: 19px; color: #777; }
  section.cover { justify-content: center; }
  section.cover h1 { font-size: 49px; margin-bottom: 22px; }
  section.cover h2 { font-size: 30px; color: #6f5700; margin-bottom: 35px; }
  section.cover p { font-size: 22px; }
  section.photo { justify-content: center; }
  section.photo h1 { font-size: 27px; color: #333; }
  section.photo h2 { font-size: 46px; line-height: 1.2; color: #222; max-width: 590px; }
  section.photo::before { content: ''; position: absolute; inset: 0; background: rgba(255,255,255,.48); z-index: -1; }
  .subtitle { font-size: 22px; color: #666; margin-top: -18px; margin-bottom: 22px; }
  .split { display: flex; gap: 45px; align-items: center; margin-top: 20px; }
  .split > div { flex: 1; min-width: 0; }
  .split img { width: 100%; max-height: 390px; object-fit: contain; }
  .split p, .split li { font-size: 25px; }
  .split ul { padding-left: 25px; }
  .compare { display: flex; gap: 65px; margin-top: 25px; }
  .compare > div { flex: 1; }
  .compare h2 { font-size: 28px; color: #6f5700; min-height: 70px; }
  .compare blockquote { border: 0; padding: 0; margin: 15px 0 25px; font-size: 34px; line-height: 1.32; }
  .compare p { font-size: 22px; }
    section.actor-owner h1 { font-size: 39px; margin-bottom: 18px; }
    .comparison-columns { display: grid; grid-template-columns: 1fr 1fr; gap: 26px; margin-top: 25px; }
    .comparison-column { min-width: 0; padding: 17px 20px; background: #f3f3ef; border-top: 4px solid #777; }
    .comparison-column.owner { background: #f5edcf; border-color: #a47b00; }
    .comparison-column h2 { font-size: 27px; min-height: 0; margin: 0 0 9px; color: #6f5700; }
    .comparison-column p { font-size: 23px; line-height: 1.3; margin: 0 0 18px; }
    .comparison-column .example-label { font-size: 15px; color: #666; margin: 23px 0 5px; }
    .comparison-column .team { font-size: 24px; font-weight: 700; margin-bottom: 5px; }
    .actor-owner .comparison-column p { font-size: 20px; }
    .actor-owner .takeaway-line { border-top: 1px solid #999; padding-top: 10px; margin-top: 15px; font-size: 18px; line-height: 1.3; }
  section.takeaway { justify-content: center; }
  section.takeaway li { font-size: 32px; margin-bottom: 27px; }
  section li { margin-bottom: 14px; }
  section.diagram.refactor > p { font-size: 24px; }
  section.example h1 { margin-bottom: 22px; }
  section.example .assumption { font-size: 21px; color: #666; margin: 0 0 25px; }
  section.example .assessment { display: grid; grid-template-columns: 1.15fr 1fr 1fr; gap: 25px; margin-top: 15px; }
  section.example .assessment > div { min-width: 0; }
  section.example .assessment > div + div { border-left: 1px solid #bbb; padding-left: 22px; }
  section.example .assessment h2 { color: #6f5700; font-size: 29px; margin: 0 0 18px; }
  section.example .assessment p, section.example .assessment li { font-size: 24px; line-height: 1.32; }
  section.example .assessment ul { padding-left: 27px; margin: 0; }
  section.example .assessment .verdict { font-weight: 700; margin-top: 20px; }
  section.links li { font-size: 29px; margin-bottom: 35px; }
  .contacts { display: flex; text-align: center; gap: 25px; margin-top: 75px; }
  .contacts > div { flex: 1; }
  .contacts img { height: 74px; margin-bottom: 20px; }
  .contacts p { font-size: 21px; margin: 6px 0; overflow-wrap: anywhere; }
  .befico { position: absolute; bottom: 20px; right: 75px; width: 80px; }
---

<!-- _class: cover -->

![bg left:45% cover](assets/image1.jpeg)
# Single Ownership Principle
## Understanding SRP through Student and three more examples
Nodirbek Usmanov

[linkedin.com/in/nodirbek-usmanov](https://linkedin.com/in/nodirbek-usmanov)  
[nodirbek@befico.de](mailto:nodirbek@befico.de)

---

<!-- _class: quote -->

# Single Responsibility Principle (SRP)

> “A class should have only one reason to change.”

<p class="attribution">Robert C. Martin, 2002</p>

---

<!-- _class: quote -->

# SRP: Martin's clarification in 2014

> “Each software module should have one and only one reason to change.”

<p class="attribution">Robert C. Martin, 2014</p>

<p class="attribution">The reason comes from people representing a narrowly defined business function.</p>

---

<!-- _class: diagram -->

# How many responsibilities?

![width:770px](diagrams/student.svg)

Think of a reason to change, not a method count.

---

<!-- _class: diagram -->

# Add `findById`. What changes?

![width:770px](diagrams/student-database.svg)

Four methods. How many independent reasons to change?

---

<!-- _class: diagram tight -->

# Who asks for these changes?

![width:960px](diagrams/student-owners.svg)

---

# Three change sources, four methods

- **Professor / Administration:** `getFaculty`
- **DBA:** `save` and `findById`
- **Operations / BI:** `describeStudent`

`save` and `findById` count together **if the same storage policy drives changes to both**.

---

# One responsibility can contain several functions

In this scenario, `save` and `findById` form **one family of functions** if one actor sets the storage policy for both.

`getFaculty` and `describeStudent` answer to different actors. They can change for different reasons.

**To place a new method, ask whose requirements will make it change.**

---

<!-- _class: diagram highlight -->

# SRP: focus on the class

![width:970px](diagrams/student-class-focus.svg)

One Student class must change for three independent groups.

---

# What is an owner here?

**Owner (in SOP):** the actor whose requirements define one narrowly scoped business function.

An actor is a **role**, not a headcount. One person may play several roles; one team may support several actors.

In this example, the proposed owners are Professor / Administration, DBA, and Operations / BI.

---

<!-- _class: diagram highlight -->

# SOP: focus on the owners

![width:970px](diagrams/student-actor-focus.svg)

Which independent group can ask this class to change?

---

<!-- _class: quote -->

# Single Ownership Principle (SOP)

> “A class should answer to one owner whose requirements drive its changes.”

<p class="attribution">Nodirbek Usmanov, 2023</p>

---

# SRP and SOP find the same boundary

<div class="compare">
<div>
<h2>SRP asks</h2>
<blockquote>How many independent reasons can change this class?</blockquote>
<p>Student has three in this example.</p>
</div>
<div>
<h2>SOP asks</h2>
<blockquote>Who can independently request those changes?</blockquote>
<p>Student serves three proposed owners in this example.</p>
</div>
</div>

<p class="subtitle" style="margin-top:32px">Martin calls the change-driving role an actor; SOP calls it an owner. Both identify the same boundary.</p>

---

<!-- _class: diagram refactor -->

# Separate the responsibilities

![width:1050px](diagrams/student-refactored.svg)

Keep together what changes for the same reason; separate what changes for different reasons.

---

# A necessary check before splitting

- `save` and `findById` do **not** belong together merely because both access a database.
- Ask whether one storage policy really drives changes to both methods.
- Check whether DBA and Operations / BI specify behavior, or only help implement it.
- Check dependencies after the split: a change to shared `Student` may still affect the other classes.

The actor map is a **hypothesis to verify**, not proof from the method names.

---

<!-- _class: example -->

# Example 1 — Employee

<p class="assumption">Assumption: pay, storage and description policies change independently.</p>

<div class="assessment">
<div>
<h2>Employee class</h2>
<ul><li><code>CalculatePay</code></li><li><code>Save</code></li><li><code>DescribeEmployee</code></li></ul>
</div>
<div>
<h2>SRP</h2>
<p>Pay rules, record retention and employee descriptions can change independently.</p>
<p class="verdict">Violated: three reasons to change.</p>
</div>
<div>
<h2>SOP</h2>
<p>Payroll, DBA and Operations / BI can each request changes.</p>
<p class="verdict">Violated: three owners.</p>
</div>
</div>

<!--
Presenter prompt: Suppose Employee gains SummarizeHoursWorked. Ask the audience who would request changes to it. Its actor, not its name, determines which family of functions it belongs to.
-->

---

<!-- _class: example -->

# Example 2 — Invoice

<p class="assumption">Assumption: tax, PDF design and archiving policies change independently.</p>

<div class="assessment">
<div>
<h2>Invoice class</h2>
<ul><li><code>CalculateTax</code></li><li><code>GeneratePdf</code></li><li><code>Archive</code></li></ul>
</div>
<div>
<h2>SRP</h2>
<p>Tax law, PDF branding and retention rules change independently.</p>
<p class="verdict">Violated: three reasons to change.</p>
</div>
<div>
<h2>SOP</h2>
<p>Tax, Billing Design and Records can each request changes.</p>
<p class="verdict">Violated: three owners.</p>
</div>
</div>

---

<!-- _class: example -->

# Example 3 — UserAccount

<p class="assumption">Assumption: all three methods follow one authentication policy.</p>

<div class="assessment">
<div>
<h2>UserAccount class</h2>
<ul><li><code>VerifyPassword</code></li><li><code>ChangePassword</code></li><li><code>ResetPassword</code></li></ul>
</div>
<div>
<h2>SRP</h2>
<p>All three methods change with the same authentication policy.</p>
<p class="verdict">Satisfied: one reason to change.</p>
</div>
<div>
<h2>SOP</h2>
<p>Identity Security defines this one policy.</p>
<p class="verdict">Satisfied: one owner.</p>
</div>
</div>

---

<!-- _class: takeaway -->

# Take away

- The number of methods does not determine the number of responsibilities.
- **SRP:** Does the class have one reason to change?
- **SOP:** Does it serve one owner of that responsibility?
- Count narrowly defined requirement sources, not broad platform teams. Then both identify the same boundary.

---

<!-- _class: links -->

# Sources

- [The Single Responsibility Principle](https://blog.cleancoder.com/uncle-bob/2014/05/08/SingleReponsibilityPrinciple.html)  
  Robert C. Martin, 8 May 2014
- *Agile Software Development: Principles, Patterns, and Practices*  
  Robert C. Martin, 2002
- *Clean Architecture: A Craftsman's Guide to Software Structure and Design*  
  Robert C. Martin, 2017

<img class="befico" src="assets/image2.png" alt="Befico">

---

# Thank you

<div class="contacts">

<div>
<img src="assets/image15.svg" alt="Email">
<p>Contact me</p>
<p><a href="https://linkedin.com/in/nodirbek-usmanov">linkedin.com/in/nodirbek-usmanov</a></p>
<p><a href="mailto:nodirbek@befico.de">nodirbek@befico.de</a></p>
</div>

<div>
<img src="assets/image14.svg" alt="Reviewers">
<p>Reviewer Ulugbek Usmanov</p>
<p>Adesso AG Deutschland</p>
</div>

<div>
<img src="assets/image14.svg" alt="Reviewers">
<p>Reviewer Marcus Schroeder</p>
<p>flint &amp; sparks GmbH, Berlin</p>
</div>



</div>
<img class="befico" src="assets/image2.png" alt="Befico">

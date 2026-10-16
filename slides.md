---
marp: true
theme: default
size: 16:9
paginate: true
html: true
title: Single Responsibility Principle – Misunderstood and underestimated
author: Nodirbek Usmanov
description: Single Ownership Principle – converted from the original 24-slide PowerPoint
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
    .actor-owner .comparison-columns { display: grid; grid-template-columns: 1fr 1fr; gap: 26px; }
    .actor-owner .comparison-column { min-width: 0; padding: 17px 20px; background: #f3f3ef; border-top: 4px solid #777; }
    .actor-owner .comparison-column.owner { background: #f5edcf; border-color: #a47b00; }
    .actor-owner .comparison-column h2 { font-size: 27px; min-height: 0; margin: 0 0 9px; color: #6f5700; }
    .actor-owner .comparison-column p { font-size: 20px; line-height: 1.3; margin: 0 0 18px; }
    .actor-owner .comparison-column .example-label { font-size: 15px; color: #666; margin: 23px 0 5px; }
    .actor-owner .comparison-column .team { font-size: 24px; font-weight: 700; margin-bottom: 5px; }
    .actor-owner .takeaway-line { border-top: 1px solid #999; padding-top: 10px; margin-top: 15px; font-size: 18px; line-height: 1.3; }
  section.takeaway { justify-content: center; }
  section.takeaway li { font-size: 32px; margin-bottom: 27px; }
  section.links li { font-size: 29px; margin-bottom: 35px; }
  .contacts { display: flex; text-align: center; gap: 25px; margin-top: 75px; }
  .contacts > div { flex: 1; }
  .contacts img { height: 74px; margin-bottom: 20px; }
  .contacts p { font-size: 21px; margin: 6px 0; overflow-wrap: anywhere; }
  .befico { position: absolute; bottom: 20px; right: 75px; width: 80px; }
---

<!-- _class: cover -->

![bg left:45% cover](assets/image1.jpeg)
# Single Responsibility Principle
## Misunderstood and underestimated
Nodirbek Usmanov

[linkedin.com/in/nodirbek-usmanov](https://linkedin.com/in/nodirbek-usmanov)  
[nodirbek@befico.de](mailto:nodirbek@befico.de)

<!--
Source: original slide 1. Original title spelling: MiSSUnDERSTOOD. Embedded icons are preserved in assets/image3.svg and assets/image4.svg.
-->

---

<!-- _class: diagram -->

# Intro

![width:820px](assets/image5.png)

<!--
Original Slido poll screenshot is preserved unchanged, including its historic QR code and poll number.
-->

---

<!-- _class: quote -->

# Single Responsibility Principle

> “A class should have only one reason to change.”

<div class="attribution">Robert C. Martin<br>Agile Software Development: Principles, Patterns, and Practices, 2002</div>

---

<!-- _class: photo -->

![bg](assets/image6.jpeg)
# Single Responsibility Principle

## Is one of the simplest of the principles, and one of the hardest to get

---

<!-- _class: quote -->

# Single Responsibility Principle (SRP)

> “In context of SRP, we define a responsibility to be a reason for change.”

<div class="attribution">Robert C. Martin<br>Agile Software Development: Principles, Patterns, and Practices, 2002</div>

---

<!-- _class: quote -->

# Single Responsibility Principle (SRP) is about people

> “...a single tightly coupled group of people representing a single narrowly defined business function...”

<div class="attribution">Robert C. Martin<br>“The Single Responsibility Principle,” 8 May 2014</div>

---

<!-- _class: actor-owner -->

# Actor and owner are not automatically the same

<div class="comparison-columns">
<div class="comparison-column">
<h2>SRP · Actor</h2>
<p>Whose needs trigger a change?</p>
<p class="example-label">IN THE INVOICE MODULE</p>
<p><strong>Tax team</strong> requests changes to tax calculations.</p>
<p><strong>Brand team</strong> requests changes to the PDF layout.</p>
</div>
<div class="comparison-column owner">
<h2>SOP · Owner</h2>
<p>Who is accountable for deciding, prioritizing, and accepting changes?</p>
<p class="example-label">OWNER OF THE INVOICE MODULE</p>
<p class="team">Billing Platform team</p>
<p>Prioritizes both requests and is accountable for the module.</p>
</div>
</div>
<p class="takeaway-line"><strong>SRP asks where changes come from. SOP asks who is accountable.</strong> One owner may coordinate several actors; ownership alone does not decide whether code belongs in one class.</p>

---

<!-- _class: diagram -->

# Single Responsibility Principle
<div class="subtitle">“A class should have only one reason to change.” — Robert C. Martin</div>

![width:850px](diagrams/employee.svg)

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

<!-- _class: diagram -->

# Responsibility

How many responsibilities does this class have?

![width:850px](diagrams/employee.svg)

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

<!-- _class: diagram -->

# Responsibility

How many responsibilities does this class have?  **3**

![width:850px](diagrams/employee.svg)

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

# Conclusion – violates SRP

<div class="split">
<div><img src="diagrams/employee-compact.svg" alt="Original employee responsibility diagram"></div>
<div>
<p>The class knows about</p>
<ul><li>business rules</li><li>databases</li><li>reports and formatting</li></ul>
<p><strong>Responsibilities &gt; 1</strong></p>
<p>Each of these responsibilities will cause the employee class to use other classes in the system.</p>
</div>
</div>

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

<!-- _class: diagram -->

# Responsibility

How many responsibilities does this class have?

![width:800px](diagrams/student.svg)

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

<!-- _class: diagram -->

# Responsibility

How many responsibilities does this class have?  **3**

![width:800px](diagrams/student.svg)

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

<!-- _class: diagram tight -->

# Responsibility

Let us add a new function to the class.  
How many responsibilities does this class have?

![width:760px](diagrams/student.svg)

**+ findById** — Finds a student by id

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
Original slide included an arrow pointing to the diagram.
-->

---

<!-- _class: diagram tight -->

# Responsibility

How many responsibilities does this class have? **3**

![width:800px](diagrams/student-database.svg)

Same family as save, both database functions

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

# Conclusion – violates SRP

<div class="split">
<div><img src="diagrams/student-database-compact.svg" alt="Original student responsibility diagram"></div>
<div>
<p>The class knows about</p>
<ul><li>business rules</li><li>databases</li><li>reports and formatting</li></ul>
<p><strong>Responsibilities &gt; 1</strong></p>
<p>Each of these responsibilities will cause the student class to use other classes in the system.</p>
</div>
</div>

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

<!-- _class: takeaway -->

# Responsibility – source of change

## The SRP is about users

Who are the users, who add changes to that method?

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

<!-- _class: diagram -->

# Responsibility

Who are the people, who are the sources of change for the STUDENT class?

![width:1140px](diagrams/student-owners.svg)

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

<!-- _class: diagram highlight -->

# Single Responsibility Principle
<div class="subtitle">“A class should have only one reason to change.” — Robert C. Martin</div>

![width:1050px](diagrams/student-class-focus.svg)

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
Editable draw.io diagram: diagrams/student-class-focus.drawio.
-->

---

<!-- _class: diagram highlight -->

# Single Responsibility Principle
<div class="subtitle">Responsibility is a family of functions that serves one particular actor</div>

![width:1050px](diagrams/student-actor-focus.svg)

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
Editable draw.io diagram: diagrams/student-actor-focus.drawio.
-->

---

# Rephrase

<div class="compare">
<div>
<h2>Single Responsibility Principle</h2>
<blockquote>“A class should have only one reason to change.”</blockquote>
<p>Robert C. Martin, 2002</p>
</div>
<div>
<h2>Single Ownership Principle</h2>
<blockquote>“A class should serve only one owner, who defines the requirements to create or change it.”</blockquote>
<p>Nodirbek Usmanov, 2023</p>
</div>
</div>

---

# Rephrase 2

<div class="compare">
<div>
<h2>Single Responsibility Principle</h2>
<blockquote>“A class should have only one reason to change.”</blockquote>
<p>Robert C. Martin, 2002</p>
</div>
<div>
<h2>Single Ownership Principle</h2>
<blockquote>“A class should serve only one owner, who defines a family of functions (responsibility).”</blockquote>
<p>Nodirbek Usmanov, 2023</p>
</div>
</div>

---

<!-- _class: diagram refactor -->

# Refactor
<div class="subtitle">Aware of transitive dependencies</div>

![width:1140px](diagrams/student-refactored.svg)

<!--
Original PowerPoint: off-slide code (not visible in the source slide).

class OrderService {
    fun sendEmail (): = { … }
    fun findById (): Order = { … }
    fun generateInvoice (): Invoice = { … }}
-->

---

<!-- _class: takeaway -->

# Take away

- A responsibility is a family of functions that serves one particular actor
- Increase the cohesion between things that change for same reasons
- Decrease the coupling between those things that change for different reasons

<!--
Source contains a repeated word: “change change”. The repetition was removed.
-->

---

<!-- _class: links -->

# Links

- [The Single Responsibility Principle](https://blog.cleancoder.com/uncle-bob/2014/05/08/SingleReponsibilityPrinciple.html)  
  Robert C. Martin (Uncle Bob), 8 May 2014
- *Agile Software Development: Principles, Patterns, and Practices*  
  Robert C. Martin (Uncle Bob), 2002

<img class="befico" src="assets/image2.png" alt="Befico">

---

# Thank you

<div class="contacts">
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
<div>
<img src="assets/image15.svg" alt="Email">
<p>Contact me</p>
<p><a href="https://linkedin.com/in/nodirbek-usmanov">linkedin.com/in/nodirbek-usmanov</a></p>
<p><a href="mailto:nodirbek@befico.de">nodirbek@befico.de</a></p>
</div>
</div>
<img class="befico" src="assets/image2.png" alt="Befico">

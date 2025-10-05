---
title: "Style Preview"
layout: "single"
hero:
  enable: true
  image_desktop: "pooh-home-md.jpg"
  image_mobile: "pooh-home-mobile.jpg"
  alt: "Bee Planet Style System"
  strapline: "Visual reference for all Bee Planet components"
  ctas:
    - label: "Back to Home"
      url: "/"
---

<section class="prose">
  <h1>Headings & Typography</h1>
  <p>This page previews the Bee Planet Connection design tokens, typography, buttons, and components.</p>

  <h2>Buttons</h2>
  <div class="cluster">
    <a class="btn btn-primary" href="#">Primary</a>
    <a class="btn btn-outline" href="#">Outline</a>
    <a class="btn btn-ghost" href="#">Ghost</a>
  </div>

  <h2>Cards</h2>
  <div class="grid cols-3">
    <div class="card"><h3>Card One</h3><p>Simple reusable card layout.</p></div>
    <div class="card"><h3>Card Two</h3><p>Cards use shadows and rounded corners.</p></div>
    <div class="card"><h3>Card Three</h3><p>Supports flexible grid columns.</p></div>
  </div>

  <h2>Tables</h2>
  <table>
    <thead><tr><th>Token</th><th>Value</th></tr></thead>
    <tbody>
      <tr><td>--forest</td><td>#164d3a</td></tr>
      <tr><td>--honey</td><td>#e0a400</td></tr>
      <tr><td>--navy</td><td>#0b3a82</td></tr>
    </tbody>
  </table>

  <h2>Alerts</h2>
  <div class="alert">This is a default alert block.</div>
  <div class="alert info" style="margin-top:.5rem;">This is an info alert block.</div>
</section>
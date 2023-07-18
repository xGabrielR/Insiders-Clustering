# Insiders Clustering

<hr>

![loyalty_program](https://user-images.githubusercontent.com/75986085/218735612-345f263d-9591-49bb-a1ac-071713b3c7b4.png)


<hr>

<h2>Summary</h2>
<hr>

- [0. Business Problem](#0-bussiness-problem)
  - [0.1. What is a Loyalty Program](#01-what-is-a-loyalty-program)
- [1. Solution Strategy and Assumptions Resume](#1-solution-strategy-and-assumptions-resume)

<hr>

<h2>0. Business Problem</h2>
<hr>

<p>All In One Place is a geral e-commerce that sells different products. Based on this scenario, the marketing team needs to have a deep understanding of all customers, the team needs to screen potential customers for a loyalty program based on clients purchases habit.</p>

<h3>0.1. What is a Loyalty Program</h3>

<p>A loyalty program in the context of e-commerce is a marketing strategy implemented by online retailers to reward and encourage repeat customers. The primary goal of a loyalty program is to foster customer loyalty and increase customer retention. By offering various incentives and benefits, e-commerce businesses aim to create a sense of loyalty and appreciation among their regular shoppers.</p>

<ol>
  <li>Enrollment: Customers are invited to join the loyalty program either during the checkout process or by signing up separately on the website or app.</li>
  <li>Personalized Offers: Advanced loyalty programs may use customer data and behavior to tailor personalized offers and recommendations, which can further enhance the customer experience.</li>
  <li>Accumulating Points or Rewards: Once enrolled, customers earn points or rewards for specific actions such as making purchases, referring friends, writing product reviews, or engaging with the brand on social media.</li>
  <li>Redemption: Customers can then redeem their accumulated points or rewards for discounts, coupons, free products, cashback, or other exclusive offers. The rewards are intended to provide added value and encourage customers to keep coming back to the e-commerce platform.</li>
</ol>

<h2>1. Solution Strategy and Assumptions Resume</h2>
<hr>

<p>The geral workflow is in this image below, simply i query some features of all users or a sample of them from sql server, apply clustering techniques for find customers behaviors and special / analytical indicatives and classify this users on groups (for loyalty program and anoter groups), for insiders people cluster i make a sales forecast to have an indication of how this group will perform in the future in terms of monetization.</p>

![image](https://github.com/xGabrielR/Insiders-Clustering/assets/75986085/80667c7a-667b-49dd-b9d2-30a6696f339f)

<p>The Data is storange on MongoDB Document and collected via Metabase for geral metric and follow-up cluster dashboard</p>

Metabase dashboard for clustering results review.

https://user-images.githubusercontent.com/75986085/219869832-7b4dafae-4f4b-4ac5-8a71-1a5f2fede586.mp4


# Insiders Clustering

<hr>

![loyalty_program](https://user-images.githubusercontent.com/75986085/218735612-345f263d-9591-49bb-a1ac-071713b3c7b4.png)


<hr>

<h2>Summary</h2>
<hr>

- [0. Business Problem](#0-bussiness-problem)
  - [0.1. What is a Loyalty Program](#01-what-is-a-loyalty-program)
- [1. Solution Strategy and Assumptions Resume](#1-solution-strategy-and-assumptions-resume)
  - [1.1. Geral Project Overview](#11-geral-project-overview)
- [2. Exploratory Data Analysis](#2-exploratory-data-analysis)
  - [2.1. Top 3 Business Hypothesis Validation](#21-top-3-business-hypothesis-validation)
  - [2.2. Cluster Insiders Overview](#22-cluster-insiders-overview)
- [3. Data Preparation](#3-data-preparation)
  - [3.1. Embedding Clients Space](#31-embedding-clients-space)
- [4. Machine Learning Metrics](#4-machine-learning-metrics)

<hr>

<h2>0. Business Problem</h2>
<hr>

<p>All In One Place is a geral e-commerce that sells different products. Based on this scenario, the marketing team needs to have a deep understanding of all customers, the team needs to screen potential customers for a loyalty program based on clients purchases habit.</p>

<h3>0.1. What is a Loyalty Program</h3>

<p>A loyalty program in the context of e-commerce is a marketing strategy implemented by online retailers to reward and encourage repeat customers. The primary goal of a loyalty program is to foster customer loyalty and increase customer retention. By offering various incentives and benefits, e-commerce businesses aim to create a sense of loyalty and appreciation among their regular shoppers.</p>

<p>Have some another Loyalty program on a company, such as:</p>

<ol>
  <li>Enrollment: Customers are invited to join the loyalty program either during the checkout process or by signing up separately on the website or app.</li>
  <li>Personalized Offers: Advanced loyalty programs may use customer data and behavior to tailor personalized offers and recommendations, which can further enhance the customer experience.</li>
  <li>Accumulating Points or Rewards: Once enrolled, customers earn points or rewards for specific actions such as making purchases, referring friends, writing product reviews, or engaging with the brand on social media.</li>
  <li>Redemption: Customers can then redeem their accumulated points or rewards for discounts, coupons, free products, cashback, or other exclusive offers. The rewards are intended to provide added value and encourage customers to keep coming back to the e-commerce platform.</li>
</ol>

<p>But, for all in one place, the main objective is to find key customers with high frequency, monetization and basket size for fidelity program, exists some ways for this process, like RFM Model, is a good baseline for fast solution for give a good value for business.</p>


<h2>1. Solution Strategy and Assumptions Resume</h2>
<hr>

<h3>1.1. Geral Project Overview</h3>

<p>The geral workflow is in this image below, simply i query some features of all users or a sample of them from sql server, apply clustering techniques for find customers behaviors and special / analytical indicatives and classify this users on groups (for loyalty program and anoter groups), for insiders people cluster i make a sales forecast to have an indication of how this group will perform in the future in terms of monetization.</p>

![image](https://github.com/xGabrielR/Insiders-Clustering/assets/75986085/80667c7a-667b-49dd-b9d2-30a6696f339f)

<p>The Data is storange on MongoDB Document and collected via Metabase for geral metric and follow-up cluster dashboard. In video below, is the Metabase dashboard for clustering results review.<p>

https://user-images.githubusercontent.com/75986085/219869832-7b4dafae-4f4b-4ac5-8a71-1a5f2fede586.mp4


<h2>2. Exploratory Data Analysis</h2>
<hr>

<p>I divide the EDA into two main steps, the business hypothesis validation and cluster profile & analysis.</p>

<h3>2.1. Top 3 Business Hypothesis Validation</h3>

<p>1. The customers of the cluster insiders have a purchase volume (revenue) above 15% of the total purchases.</p>

![image](https://github.com/xGabrielR/Insiders-Clustering/assets/75986085/7746dc7e-f658-4724-891b-69cab73dc224)


<p>2. The customers of the cluster insiders have a purchase volume (items) above 15% of the total purchases.</p>

![image](https://github.com/xGabrielR/Insiders-Clustering/assets/75986085/b531078b-aea2-4e04-bb06-4f0da1cbf9f2)


<p>3. The customers of the cluster insiders have a purchase frequency greater than 50% in each month.s.</p>

![image](https://github.com/xGabrielR/Insiders-Clustering/assets/75986085/99844034-c2e0-4810-93ff-bde94faecad6)


<h3>2.2. Cluster Insiders Overview</h3>

<p>The Most Userful Information for the cluster insiders is this simple four lines below, its give some base and good information about users in insiders cluster, the company have 551 good clients given a total of: 5700.</p>

<ol>
  <li>Number of Customers: 551;</li>
  <li>Average Revenue: BRL 9354.00;</li>
  <li>Average Recency: 50;</li>
  <li>Average purchases: 13;</li>
</ol>


<p>In this table below, is information abaou all results of clustering process.</p>

![image](https://github.com/xGabrielR/Insiders-Clustering/assets/75986085/7eb468ca-eb4c-419c-915e-4a84b51841c9)

<h2>3. Data Preparation</h2>

<hr>

<p>On first cycle, i try use some computed features for find key users and MinMaxScaler, but the silhouette score (by key metric for clustering) is very low, based on this low metric I have transformed the feature space for a Embedding space to up the silhouette score metric and used very simple computed metric on feature engineering.</p>
<p>For my last try, I have get with DBSCAN silhouette score aprox 0.68, but i not find a insiders cluster with this solution, I have chosed Gausain Mixture for clustering, with GMM i get a metric with aprox 0.480 with optuna optimization for params, a little low based on DBSCAN metric, but with GMM is possible to find a good insiders clsuter with very different characteristics of other finded groups.</p>

<h3>3.1. Embedding Clients Space</h3>

<p>In the image below it is possible to observe the customers in their respective groups represented by colors.</p>

![image](https://github.com/xGabrielR/Insiders-Clustering/assets/75986085/e4a4a481-f8ae-4dc8-b74c-40fe0f4fdc89)

<p>This is the insiders cluster a little distanced from the others with the best characteristics obtained, these are the most valuable customers found with the clustering methods carried out in the project to find ops customers for the loyalty program.</p>
<p>I could explore these 551 detected users a little more, probably there should be more groups within this same group, so it is possible to find the most valuable of the valuable and deliver them to the marketing team and the other teams in the presentation of results.</p>

<h2>4. Machine Learning Metrics</h2>

<hr>

<p>I have made a package called cluster-ss for my auxliar clustering project, the package in this link: https://pypi.org/project/cluster-ss/</p>
<p>With this package i run all sklearn clustering disponible solutions and its give to me a good overview of my chosed metric (sihlouette score).</p>

![image](https://github.com/xGabrielR/Insiders-Clustering/assets/75986085/409c86fc-d31b-45ba-98b5-1d49ee05407c)

<p>For best params with optuna search, I chosed 9 K Clusters (9 different groups of clients for business), its a good number, not much large and i think is a good start for solution for this problem now with clustering machine learning meethods.</p>

<p>And for sales forecasting, i have used FB Prophet, is a classic and good solution on my perspective, have another popular solution like statsforecast, but i have chsed FB insted.</p>

![image](https://github.com/xGabrielR/Insiders-Clustering/assets/75986085/fe8c9719-8804-4f2a-b844-ae24f0a71018)



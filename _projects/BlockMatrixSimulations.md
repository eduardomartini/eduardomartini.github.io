---
layout: page
title: Block matrix approach
description: 
img: assets/img/BlockMatrix.svg
importance: 1
category: NotesOn
giscus_comments: false
# toc:
  # sidebar: left
---


<a href="assets/jupyter/BlockMatricesForLinProblems.ipynb">    
 <img src="/assets/img/icons/pdf_icon.png" style="float:right;" height="50px" />
</a>

{::nomarkdown}

{% include_relative html/BlockMatricesForLinProblems.html %}

{:/nomarkdown}


{::nomarkdown}
{% assign jupyter_path = "assets/jupyter/BlockMatricesForLinProblems.ipynb" | relative_url %}
{% capture notebook_exists %}{% file_exists assets/jupyter/BlockMatricesForLinProblems.ipynb %}{% endcapture %}
{% if notebook_exists == "true" %}
{% jupyter_notebook jupyter_path %}
{% else %}

<p>Sorry, the notebook you are looking for does not exist.</p>
{% endif %}
{:/nomarkdown}

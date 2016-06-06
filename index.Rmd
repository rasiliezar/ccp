---
title       : Coursera Capston Proyect
subtitle    : Word Predictor
author      : Ricardo Alfredo Siliezar
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

The objective of this project is create a model capable of predict the next word in a sentence. This model uses n-grams for find the next five words that have the most probability of occurrence. Specifically I use four gram as the maximum n of the grams and one as the minimum. 

--- .class #id 

## Concept

The model find the last three words in the user's sentence, then the model find the item which starts whit the same three user's words and extract the following word.  
  
For example, imagine that the user wrote "The journey led the baddest boxer in the" and we know the next word is "world"; so, the model uses "boxer", "in" and  the" (in that order) and search in the n-grams for this particular pattern  and finds: 

 - boxer in the world
 - boxer in the middle
 - boxer in the morning 
 - boxer in the first
 - boxer in the past  
  
Then the lasts words are extracted and the model makes a list: "world | middle | morning | first | past" in which the correct word is predicted.

---

## Work flow of the predict function

  <img class=center src= "./assets/img/Flow.png" width="100%">

---

## Data product

Using Shiny, I have done a data product for the model. The idea is that the user can input a sentence and the model will bring the list of words.  

- The app it can be found in: https://rasiliezar.shinyapps.io/ShinyApp_WordPredictor/  
  
<img class=center src= "./assets/img/page.png" width="100%">






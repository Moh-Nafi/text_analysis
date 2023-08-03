# Predicting Sentiment of the Customer Reviews (Using R "tm" library)

### Data description
This is a Women’s Clothing E-Commerce dataset revolving around the reviews written by customers. 
This dataset includes around 10,000 rows. Each row corresponds to a customer review. Based on the text review of the customer, our goal is to develop 
a predictive model that can classify whether the customer recommends the product (where 1 is recommended, 0 is not recommended).

### Project Protocol
Step 1: Import data and build a corpus for text mining

Step 2: Clean and pre-process the text data

Step 3: Generate the TF-IDF matrix of the documents <br/>
&nbsp;&nbsp;(Term Frequency TF(t,d): The number of times a term (word) t appears in each document d.
&nbsp;&nbsp;&nbsp;IDF accounts for terms that appear frequently in all the documents.  
&nbsp;&nbsp;&nbsp;TF-IDF matrix assess the importance of a term within a collection of documents.) 

Step 4: Reduce term dimensions by removing less frequent terms

Step 5: Predictive modeling – Classification

Step 6: Generate the word cloud (Just for Fun!!)


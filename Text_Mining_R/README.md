# Predicting Sentiment of the Customer Reviews (Using R "tm" library)

### Data description
This is a Women’s Clothing E-Commerce dataset revolving around the reviews written by customers. 
This dataset includes around 10,000 rows. Each row corresponds to a customer review. Based on the text review of the customer, our goal is to develop 
a predictive model that can classify whether the customer recommends the product (where 1 is recommended, 0 is not recommended).

### Project Protocol
Step 1: Import data and build a corpus for text mining

Step 2: Clean and pre-process the text data

Step 3: Generate the TF-IDF matrix of the documents <br/>
(**Term Frequency TF(t,d):** The number of times a term (word) t appears in each document d. **IDF** accounts for terms that appear frequently in all the documents. **TF-IDF** matrix assess the importance of a term within a collection of documents.) <br/>

Step 4: Reduce term dimensions by removing less frequent terms

Step 5: Predictive modeling – Classification

Step 6: Generate the word cloud (Just for Fun!!)<br/>

## Project Outcome <br/>
![r](https://github.com/Moh-Nafi/text_analysis/assets/133475571/8dbe7541-c325-40bf-bb78-28d23ef10246)<br/>

### Here's what each of these numbers means:

1. True Positives (TP): The number of instances correctly predicted as class 1 (in this case, 3033).

2. True Negatives (TN): The number of instances correctly predicted as class 0 (in this case, 247).

3. False Positives (FP): The number of instances wrongly predicted as class 1 when they actually belong to class 0 (in this case, 125).

4. False Negatives (FN): The number of instances wrongly predicted as class 0 when they actually belong to class 1 (in this case, 461).

The confusion matrix allows us to calculate various performance metrics for the model:

--->Accuracy: The proportion of correctly classified instances (both TP and TN) out of all instances (in this case, 0.8484 or 84.84%).

--->Sensitivity (also called Recall or True Positive Rate): The proportion of true positive instances out of all actual positive instances (in this case, 0.34887 or 34.89%).

--->Specificity: The proportion of true negative instances out of all actual negative instances (in this case, 0.96042 or 96.04%).

#Word cloud

![Rplot](https://github.com/Moh-Nafi/text_analysis/assets/133475571/c6382c19-5227-4b4b-9d4f-6d73180b94a2)

# Step 1: Import data and build a corpus for text mining

# We are going to use "tm" package to process raw text data from reviews dataset.
# The "tm" (Text Mining) library in R provides various functions 
# and tools for text mining and natural language processing (NLP) tasks. 

library(tm)
reviews <- read.csv("reviews.csv",header = FALSE)
View(reviews)

# In tm, a Corpus serves as the primary framework for handling documents, 
# representing a compilation of text documents. By using VectorSource(x), 
# each element within the vector x is treated as an individual document.

review_corpus <- Corpus(VectorSource(reviews$Review.Text))

# Step 2: Clean and pre-process the text data
review_corpus <- tm_map(review_corpus, tolower)
review_corpus <- tm_map(review_corpus, removeNumbers)
review_corpus <- tm_map(review_corpus, removePunctuation)
review_corpus <- tm_map(review_corpus, removeWords,  stopwords("english"))
review_corpus <- tm_map(review_corpus, stripWhitespace)
review_corpus <- tm_map(review_corpus, stemDocument) 

dtm <- DocumentTermMatrix(review_corpus)
inspect(dtm)

#Step 3: Generate the TF-IDF matrix of the documents
tfidf <- weightTfIdf(dtm)
inspect(tfidf)

tfidf <- removeSparseTerms(tfidf, 0.93)
inspect(tfidf)

review.df <- data.frame(as.matrix(tfidf), Recommended = reviews$Recommended)
View(review.df)


#Step 4:
# For building a predictive model, we will at first partition the records 
# into 60% training and 40% validation with seed set to 1.

# Partition data
set.seed(1)
train.index <- sample(1:nrow(review.df), nrow(review.df)*0.6)  
train.df <- review.df[train.index, ]
valid.df <- review.df[-train.index, ]


# Run logistic regression
logit.reg <- glm(Recommended ~ ., data = train.df, family = "binomial") 
options(scipen=999)
summary(logit.reg)



logit.reg.pred <- predict(logit.reg, valid.df, type = "response")

# set the cutoff to be 0.5 and evaluate the classification performance
pred <- ifelse(logit.reg.pred > 0.5, 1, 0)


library(caret)
confusionMatrix(factor(pred), factor(valid.df$Recommended))


# Word-Cloud to show the most used words in the reviews
install.packages("wordcloud")
library(wordcloud)
# convert tfidf to a matrix
m <- as.matrix(tfidf)

# find out the importance of each term by summing up the tf-idf scores over the corpus
v <- sort(colSums(m),decreasing=TRUE)
wordcloud(names(v), v, random.order=FALSE, max.words=100, colors=brewer.pal(8, "Dark2"))








# Simple Word2Vec Model Implementation

The data in car_tags.csv has information about 11,914 cars. There are two fields: Maker_Model and
description. The description column contains a set of tags (separated by a comma) where the
Maker_Model is also included.

Using the Word2Vec Model we will vectorize the cars' given information and later plot them on a T-SNE graph. 
The objective of the project is to show cars with similar features exist in the same cluster or close by.

# pyspark-ml-pipeline
Apache Spark comes with a library named MLlib to perform Machine Learning tasks using the Spark framework. Since there is a Python API for Apache Spark, i.e., PySpark, you can also use this Spark ML library in PySpark. MLlib contains many algorithms and Machine Learning utilities.
# Data
- Batsman: Unique batsman id (Integer)
- Batsman_Name: Name of the batsman (String)
- Bowler: Unique bowler id (Integer)
- Bowler_Name: Name of the bowler (String)
- Commentary: Description of the event as broadcasted (String)
- Detail: Another string describing the events such as wickets and extra deliveries (String)
- Dismissed: Unique Id of the batsman if dismissed (String)
- Id: Unique row id (String)
- Isball: Whether the delivery was legal or not (Boolean)
- Isboundary: Whether the batsman hit a boundary or not (Binary)
- Iswicket: Whether the batsman dismissed or not ( Binary)
- Over: Over number (Double)
- Runs: Runs on that particular delivery (Integer)
- Timestamp: Time at which the data was recorded (Timestamp)

# Transformers and Estimators

![pipeline](https://cdn.analyticsvidhya.com/wp-content/uploads/2019/11/basic_pipeline.png)


As the name suggests, Transformers convert one dataframe into another either by updating the current values of a particular column (like converting categorical columns to numeric) or mapping it to some other values by using a defined logic.

An Estimator implements the fit() method on a dataframe and produces a model. For example, LogisticRegression is an Estimator that trains a classification model when we call the fit() method.

# ML Pipeline
![ml](https://cdn.analyticsvidhya.com/wp-content/uploads/2019/11/pipeline_lr.png)

We have to define the stages by providing the input column name and output column name. The final stage would be to build a logistic regression model. And in the end, when we run the pipeline on the training dataset, it will run the steps in a sequence and add new columns to the dataframe (like rawPrediction, probability, and prediction).

# References
- https://www.guru99.com/pyspark-tutorial.html
- https://intellipaat.com/blog/tutorial/spark-tutorial/machine-learning-with-pyspark-tutorial/
- https://www.analyticsvidhya.com/blog/2019/11/build-machine-learning-pipelines-pyspark/

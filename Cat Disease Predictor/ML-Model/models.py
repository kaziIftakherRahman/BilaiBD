import numpy as np
import pandas as pd
from sklearn.impute import SimpleImputer
from sklearn.naive_bayes import MultinomialNB
import pickle

l1 = ['Lumps', 'Swelling', 'Skin_infections', 'Abnormal _discharge', 'Bad_breath', 'Weight_loss', 'Weakness',
      'Vomiting', 'Loss_of_appetite', 'Excessive_thurst', 'Increased_urination', 'Unsually_sweet_smelling_breath',
      'Lethargy', 'Dehydration', 'Urinary_tract_infection', 'Enlarged_lymph_nodes', 'Fever', 'Anemia', 'Diarrhea',
      'Eye_problem', 'Dental_disease', 'Wounds_wont_heal', 'Skin_redness', 'Behaviour_change', 'Abcesses', 'Seizures', 'Jaundice',
      'Increased_vocalization']

disease = ['cancer', 'diabates', 'FIV', 'FelV', 'Heartworm', 'Rabies', 'Worms']

# Load the training data
file_path = 'C:/Users/User/Downloads/website/website/ML Model/Training - Sheet1.csv'


df = pd.read_csv(file_path)

df.replace({'prognosis': {'cancer': 0, 'diabates': 1, 'FIV': 2, 'FelV': 3, 'Heartworm': 4, 'Rabies': 5, 'Worms': 6}},
           inplace=True)

# Handle missing values
imputer = SimpleImputer(strategy="most_frequent")
X = imputer.fit_transform(df[l1])
y = df[["prognosis"]]

# Train the model
gnb = MultinomialNB()
gnb = gnb.fit(X, np.ravel(y))

# Save the trained model to a Pickle file
with open('model.pkl', 'wb') as model_file:
    pickle.dump(gnb, model_file)
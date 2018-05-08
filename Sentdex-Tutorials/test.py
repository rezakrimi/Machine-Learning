import pandas as pd
import numpy as np

# df = pd.DataFrame(np.arange(12).reshape(3,4),
#                       columns=['A', 'B', 'C', 'D'])
#
# print (df.drop([1], 0))
#
# a= [1, 2, 3, 4, 5]
#
# print (a[-3:])
a = np.array([[1,2,3],[1,1,1]])
b = np.array([[1,2],[1,2],[1,2]])
print(np.dot(a, b))
print('completing ')

a = [[[1,2,3],[1]],
     [[4, 2, 3], [1]],
     [[5, 2, 3], [1]],
     [[6, 2, 3], [1]],
     [[7, 2, 3], [1]],
     [[8, 2, 3], [1]],]

a = np.array(a)
print(a[-3:, 0])
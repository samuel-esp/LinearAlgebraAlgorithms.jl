# Community Detection Label Propagation

**Definition (Wikipedia)** 

*Label propagation is a semi-supervised machine learning algorithm that assigns labels to previously unlabeled data points. At the start of the algorithm, a (generally small) subset of the data points have labels (or classifications). These labels are propagated to the unlabeled points throughout the course of the algorithm.*

***


function minMode(c)

*computes the minMode. given a collection [1, 5, 5, 3, 3, 7] will return 3 because the highest repetition is 2 and the lowest most repeated number is 3*

function diag_conversion(lab, n)

*computes the diagonal. take the matrix lab and the number of nodes n, returns the "diagonal" vector*

function cdlp(A, n, t)

*computes the label propagation algorithm. takes A as the input matrix, s as the source node, and n as the number of nodes, returns the label propagation matrix*
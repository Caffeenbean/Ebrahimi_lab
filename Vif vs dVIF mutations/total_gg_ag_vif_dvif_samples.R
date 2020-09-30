library(Biostrings)
library(seqinr)
library(dplyr)
library(stringi)

M1_aligned= read.alignment("Sequences/Alignment of 35 sequences total M1 data plus reference.fasta", format='fasta') #read alignment file


Reference= M1_aligned[["seq"]][[1]] #extract referance sequence

ggReference=unlist(gregexpr(pattern ='gg', Reference)) #find the location of 'gg' in the reference sequence

allsequences=as.matrix(M1_aligned) #make the alignment a matrix to get the base number as a column

compareallseqtoref=as.matrix(allsequences[, c(ggReference)]) #extract only the 'gg' values in the reference

comparingall=as.matrix(apply(compareallseqtoref,1:2, function(x) if (x == 'a'){print(TRUE)}else {print(FALSE)} )) #any 'ag' will print as true, everything else is false

total=as.matrix(apply(comparingall,1, function(x) sum(x))) #count the total true values by row
      
############################ M2 ########################

M2_aligned2= read.alignment("Sequences/All aligned with reference.fasta", format='fasta') #read alignment file
allsequences2=as.matrix(M2_aligned2) #make the alignment a matrix to get the base number as a column
Reference2= M2_aligned2[["seq"]][[1]] #extract referance sequence

ggReference2=unlist(gregexpr(pattern ='gg', Reference2)) #find the location of 'gg' in the reference sequence
compareallseqtoref2=as.matrix(allsequences2[, c(ggReference2)]) #extract only the 'gg' values in the reference
comparingall2=as.matrix(apply(compareallseqtoref2,1:2, function(x) if (x == 'a'){print (TRUE)}else {print(FALSE)} )) #any 'ag' will print as true, everything else is false

total2=as.matrix(apply(comparingall2,1, function(x) sum(x))) #count the total true values by row


################### M3 ##################################

M3_aligned= read.alignment("Sequences/M3 alignment all time points.fasta", format='fasta') #read alignment file
allsequences=as.matrix(M3_aligned) #make the alignment a matrix to get the base number as a column
Reference= M3_aligned[["seq"]][[1]] #extract referance sequence

ggReference=unlist(gregexpr(pattern ='gg', Reference)) #find the location of 'gg' in the reference sequence
compareallseqtoref=as.matrix(allsequences[, c(ggReference)]) #extract only the 'gg' values in the reference
comparingall=as.matrix(apply(compareallseqtoref,1:2, function(x) if (x == 'a'){print(TRUE)}else {print(FALSE)} )) #any 'ag' will print as true, everything else is false
total3=as.matrix(apply(comparingall,1, function(x) sum(x))) #count the total true values by row

######################### M5 ################################

M5_aligned3= read.alignment("Sequences/M5 all time point alignment.fasta", format='fasta') #read alignment file
allsequences3=as.matrix(M5_aligned3) #make the alignment a matrix to get the base number as a column
Reference3= M5_aligned3[["seq"]][[1]] #extract referance sequence

ggReference3=unlist(gregexpr(pattern ='gg', Reference3)) #find the location of 'gg' in the reference sequence
compareallseqtoref3=as.matrix(allsequences3[, c(ggReference3)]) #extract only the 'gg' values in the reference
comparingall3=as.matrix(apply(compareallseqtoref3,1:2, function(x) if (x == 'a'){print(TRUE)}else {print(FALSE)} )) #any 'ag' will print as true, everything else is false
total4=as.matrix(apply(comparingall3,1, function(x) sum(x))) #count the total true values by row












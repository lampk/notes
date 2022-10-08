getwd()
setwd()
des1=rotation.design(attribute.names=list(Region=c("Reg_A","Reg_B","Reg_C"),
                                          eco=c("Conv.", "More", "Most"),
                                          Price=c("1", "1.1", "1.2")), 
                     nalternatives = 2, nblocks = 1, row.renames = FALSE,
                     randomize = TRUE, seed = 987)
des1
questionnaire(choice.experiment.design = des1)

data("syn.res1")
syn.res1[1:3, ]
desmat1=make.design.matrix(choice.experiment.design = des1, 
                           optout = TRUE, categorical.attributes = c("Region", "eco"),
                           continuous.attributes = c("Price"), unlabeled = TRUE)

desmat1[1:3, ]
dataset2=make.dataset(respondent.dataset = syn.res1,
                      choice.indicators = c("q1", "q2", "q3", "q4", "q5", "q6", "q7", "q8", "q9"),
                      design.matrix = desmat1)
dataset2[1:3, ]

dataset1=make.dataset(respondent.dataset = syn.res1,
                      choice.indicators = c("q1", "q2", "q3", "q4", "q5", "q6", "q7", "q8", "q9"),
                      design.matrix = desmat)

des4=rotation.design(attribute.names=list(Nguoi=c("N1","N2","N3"),
                                          doituong=c("D1", "D2"),
                                          thoigian=c("T45", "T90"),
                                          phuongtien=c("P1", "P2")), 
                     nalternatives = 2, nblocks = 1, row.renames = FALSE, randomize = TRUE, seed = 987)
des4
questionnaire(choice.experiment.design = des4)

desmattn1=make.design.matrix(choice.experiment.design = des4,
                          optout=TRUE, categorical.attributes = c("Nguoi","doituong","phuongtien"),
                          continuous.attributes = c("thoigian"), unlabeled = TRUE)

library(readxl)
datatn=read_xlsx(path="pilot.xlsx")
datasettn4=make.dataset(respondent.dataset = datatn, choice.indicators = 
                          c("Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8", "Q9", "Q10", "Q11", "Q12"),
                        design.matrix = des4)

des5=rotation.design(attribute.names=list(Nguoi=c("N1","N2","N3"),
                                          doituong=c("D1", "D2"),
                                          thoigian=c("45", "90"),
                                          phuongtien=c("P1", "P2")), 
                     nalternatives = 2, nblocks = 1, row.renames = FALSE, randomize = TRUE, seed = 987)
des5
questionnaire(choice.experiment.design = des5)


desmattn2=make.design.matrix(choice.experiment.design = des5,
                          optout=TRUE, categorical.attributes = c("Nguoi","doituong","phuongtien"),
                          continuous.attributes = c("thoigian"), unlabeled = TRUE)
datasettn2=make.dataset(respondent.dataset = datatn,
                      choice.indicators = c("Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8", "Q9", "Q10", "Q11", "Q12"),
                      design.matrix = desmattn2)





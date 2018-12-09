library("data.table")
frequencies <- fread("input-1.csv", sep = "\n")
frequencies <- frequencies[,1]
frequenciesReached <- c(0)
currentFrequency <- 0
continue <- TRUE 
n <- 1
i <- 1
rows <- nrow(frequencies)

while(continue) {
  print(n)
  i <- i + 1
  for(frequency in 1:rows) {
    currentFrequency <- currentFrequency + frequencies[frequency]
    if(match(currentFrequency, frequenciesReached, nomatch=0) > 0) {
      continue <- FALSE
      break
    } 

    frequenciesReached[i] = currentFrequency
  }
  n <- n + 1
}

print(currentFrequency)

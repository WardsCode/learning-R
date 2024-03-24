weather <- read.csv("barranquilla_2.csv")
attach(weather)

datetime <- as.Date(datetime, format = "%Y-%m-%d")

print("Welcome ot the weather summary tool")
selection <- 0
while (selection != 5){
    print("1.Get a summary of max temperature")
    print("2.Get a summary of min temperature")
    print("3.Get a summary of Fells like temp ")
    print("4.Complete Summary")
    print("5.Close")
    selection <- readline(prompt = "Please select an option" )
    selection <- as.numeric(selection)
    if(selection == 5){
        break
    }else {
       
        if (selection == 1){
            print(paste("average temperature is:", sum(tempmax)/length(tempmax)))
            #print(mean(tempmax))
            print(paste("Highest temperature reported is:",max(tempmax)))
            print(paste("Lowest Highest temperature reported is:",min(tempmax)))

        }else if (selection == 2) {
            print(paste("average temperature is:",sum(tempmin)/length(tempmin)))
            #print(mean(tempmin))
            print(paste("Highest lowest temperature reported is:",max(tempmin)))
            print(paste("Lowest temperature reported is:",min(tempmin)))
        }else if (selection == 3) {
            print(paste("Feels like average temperature is:", sum(feelslike)/length(feelslike)))
            #print(mean(tempmin))
        }else if (selection == 4) {
            print(summary(weather))
        }
    }
}
    
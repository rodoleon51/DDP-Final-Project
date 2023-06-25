library(shiny)

shinyUI(
  navbarPage("DDP Week 4 Project",
             tabPanel("Data Analysis",
                      fluidPage(
                        titlePanel("The relationship between variables and miles per gallon (MPG)"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V Shape/Straight Line" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),

                            checkboxInput("outliers", "Show outliers", FALSE)
                          ),

                          mainPanel(
                            h3(textOutput("caption")),

                            tabsetPanel(type = "tabs",
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression model",
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("Documentation",
                      h2("Motor Trend Car Road Tests 1973-1974"),
                      hr(),
                      h3("Description"),
                      helpText("The dataframe contains data on 11 variables related to automobile design and performance for 32 automobiles models from 1973 and 1974."),
                      h3("Format"),
                      p("A data frame with 32 observations on 11 variables."),

                      p("  [, 1]   mpg   Miles/(US) gallon"),
                      p("  [, 2]	 cyl	 Number of cylinders"),
                      p("  [, 3]	 disp	 Displacement (cu.in.)"),
                      p("  [, 4]	 hp	   Gross horsepower"),
                      p("  [, 5]	 drat	 Rear axle ratio"),
                      p("  [, 6]	 wt	   Weight (lb/1000)"),
                      p("  [, 7]	 qsec	 1/4 mile time"),
                      p("  [, 8]	 vs	   V Shape/Straight Line"),
                      p("  [, 9]	 am	   Transmission (0 = automatic, 1 = manual)"),
                      p("  [,10]	 gear	 Number of forward gears"),
                      p("  [,11]	 carb	 Number of carburetors"),

                      ),
                      tabPanel("A brief discussion",

                      h3("Regression Models Course Assignment"),

                      helpText("The following table is a discussion of variables in the R mtcars dataset. It was developed in response to the Coursera Regression Models class in the Data Science Specialization taught by Prof. Brian Caffo for the course project assignment: “You work for Motor Trend, a magazine about the automobile industry. Looking at a data set of a collection of cars, they are interested in exploring the relationship between a set of variables and miles per gallon (MPG) (outcome). They are particularly interested in the following two questions: ‘Is an automatic or manual transmission better for MPG’ and ‘Quantify the MPG difference between automatic and manual transmissions’”

Understanding the data is key to interpreting possible modles and variable interactions. This table was developed as a resource to assist thinking about how to develop a model through greater understanding of the data."),
                      h3("Source"),
                      a("https://rstudio-pubs-static.s3.amazonaws.com/61800_faea93548c6b49cc91cd0c5ef5059894.html")
             ),

             tabPanel("Github repository",
                      h3("Return to github repository"),
                      a("")
             )
    )
  )
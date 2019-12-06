source("R/03_merging_dataframe.R")

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

variable_x <- c("region", "plante_reference", "climat", "typo_pays_principale", "topographie",
                "type_bordure","annee", "pourcent_pente","surface","texture_sol")
variable_y <- c("altitude", "pct_mo","pct_ph","largeur_bordure")

variable_y %in% colnames(parcelle_flore)# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Exploratory analysis"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("variable_x", "Variable en x :", 
                  choices = varaible_x),
      selectInput("variable_y", "Variable en y :", 
                  choices = variable_y),
      hr(),
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("explore_plot")  
    )
    
  )
)



plot(parcelle_flore$pct_ph~parcelle_flore$surface, las=2)

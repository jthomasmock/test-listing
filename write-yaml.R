base_df <- data.frame(
  stringsAsFactors = FALSE,
  title = c("<a href='https://colorado.rstudio.com/rsc/content/35a5a9c3-f8b1-414a-91cb-bdb5ad402580/'>Bike-Predict---Model-Step-2---Metrics-1654034593681</a>",
            "<a href='https://colorado.rstudio.com/rsc/content/07b3ff23-595b-4f8b-9f28-7c393cf230ef/'>Bike-Predict---Model-Step-1---Train-and-Deploy-1654034008521</a>"),
  date = c("2022-05-31", "2022-05-31"),
  image = c("vetiver-bike.png", "vetiver-bike.png"),
  subtitle = c("sam.edwardes", "sam.edwardes")
) |> dplyr::tibble()

base_df

base_df |> 
  rowwise() |> 
  group_split() |> 
  write_yaml("test.yml")
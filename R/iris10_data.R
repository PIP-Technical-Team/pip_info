
getwd()
iris10 <- iris[1:10,] |> 
  janitor::clean_names()

dir <-  fs::path("data") |> 
  fs::dir_create()

fname <- fs::path(dir, "iris")

haven::write_dta(iris10, fs::path(fname, ext = "dta"))
jsonlite::write_json(iris10, fs::path(fname, ext = "json"))
yaml::write_yaml(iris10, fs::path(fname, ext = "json"))
qs::qsave(iris10, fs::path(fname, ext = "qs"))
fst::write_fst(iris10, fs::path(fname, ext = "fst"))
readr::write_csv(iris10, fs::path(fname, ext = "csv"))
readr::write_rds(iris10, fs::path(fname, ext = "Rds"))


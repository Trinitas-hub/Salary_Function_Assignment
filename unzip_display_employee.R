zip_file <- "Employee Profile.zip"
output_folder <- "unzipped_employee_profile"

dir.create(output_folder, showWarnings = FALSE)
unzip(zip_file, exdir = output_folder)

files <- list.files(output_folder, recursive = TRUE, full.names = TRUE)
print(files)

csv_file <- files[grepl("\\.csv$", files)]
employee_data <- read.csv(csv_file[1])

print(employee_data)

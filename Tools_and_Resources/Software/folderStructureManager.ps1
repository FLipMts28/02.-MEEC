# Set the root folder name
$root = "Master_Electronics_Computers"

# Define the folder structure
$folders = @(
    "01_Data_Analysis\Lectures",
    "01_Data_Analysis\Assignments",
    "01_Data_Analysis\Projects",
    "01_Data_Analysis\Notes",

    "02_Programming_Mobile_Devices\Android",
    "02_Programming_Mobile_Devices\iOS",
    "02_Programming_Mobile_Devices\Cross-Platform",
    "02_Programming_Mobile_Devices\Assignments",
    "02_Programming_Mobile_Devices\Notes",

    "03_Advanced_Internet_Programming\Frontend",
    "03_Advanced_Internet_Programming\Backend",
    "03_Advanced_Internet_Programming\Fullstack Projects",
    "03_Advanced_Internet_Programming\APIs",
    "03_Advanced_Internet_Programming\Notes",

    "04_Sensor_Networks\Wireless Protocols",
    "04_Sensor_Networks\Simulations",
    "04_Sensor_Networks\Projects",
    "04_Sensor_Networks\Notes",

    "05_Artificial_Vision_Applications\OpenCV",
    "05_Artificial_Vision_Applications\ML Models",
    "05_Artificial_Vision_Applications\Image Processing",
    "05_Artificial_Vision_Applications\Notes",

    "06_Cloud_Computing\AWS",
    "06_Cloud_Computing\Azure",
    "06_Cloud_Computing\GCP",
    "06_Cloud_Computing\Projects",
    "06_Cloud_Computing\Notes",

    "07_IoT\Arduino",
    "07_IoT\Raspberry_Pi",
    "07_IoT\Protocols",
    "07_IoT\Notes",

    "08_Cyberphysical_Systems\Security",
    "08_Cyberphysical_Systems\Architecture",
    "08_Cyberphysical_Systems\Simulations",
    "08_Cyberphysical_Systems\Notes",

    "Research\Papers",
    "Research\Thesis",
    "Research\References",

    "Tools_and_Resources\Software",
    "Tools_and_Resources\Libraries",
    "Tools_and_Resources\Tutorials",

    "Personal_Notes\Ideas",
    "Personal_Notes\Career",
    "Personal_Notes\Networking"
)

# Create the folder structure
foreach ($folder in $folders) {
    $path = Join-Path -Path $root -ChildPath $folder
    New-Item -ItemType Directory -Path $path -Force | Out-Null
}

Write-Host "Folder structure created successfully under '$root'"
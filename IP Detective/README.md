# IP Detective (IP_detective)

IP Detective is a bash script that allows you to quickly and efficiently check the location of an IP address using the ip-api.com service. It provides you with the city, region, and country information based on the given IP address.

## Prerequisites

Before using IP Detective, make sure you have the following prerequisites:

1. Bash: IP Detective is a bash script and requires bash to be installed on your system.
2. jq: IP Detective uses jq, a command-line JSON processor, to parse the API response. Ensure that jq is installed on your system. If not, you can download it from https://stedolan.github.io/jq/download/.
3. Internet Connection: IP Detective relies on an internet connection to access the ip-api.com service and retrieve location information.

## Usage

To use IP Detective, simply run the script with the IP address as a command-line parameter. For example:

```bash
./IP_detective 15.45.0.1
```

Replace `15.45.0.1` with the desired IP address you want to investigate.

## Output

If the provided IP address is valid and the location information is successfully retrieved, IP Detective will display the following details:

```
City, Region in Country
```

For instance, the output might look like:

```
San Francisco, California in United States
```

In case the location information cannot be obtained (e.g., due to an invalid IP address or connection issues), the script will display:

```
IP location not found.
```


## Disclaimer

IP Detective uses the ip-api.com service to retrieve location information, which is subject to the terms and conditions of ip-api.com. The accuracy and availability of location data are dependent on the service itself. The author of IP Detective bears no responsibility for the accuracy or reliability of the location information obtained through this script.

Use IP Detective responsibly and ensure compliance with all applicable laws and regulations while using location data.

Happy IP tracking with IP Detective! 🕵️‍♂️
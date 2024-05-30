# Hashnode Analytics Report Generator
This Go script fetches analytics data from the Hashnode API and generates a CSV report with the data.

## Features
- Fetches views, comments, and likes data from the Hashnode API
- Generates a CSV report with the analytics data
- Handles errors gracefully and provides informative error messages

## Usage
1. Clone the repository or download the script file.
2. Open the script file and update the `apiKey` constant with your Hashnode API key.
3. Save the changes and run the script using a Go runtime environment.

   ```
   go run script.go
   ```

4. The script will generate an `analytics_report.csv` file in the same directory as the script.

## How it Works
The script uses the following steps to generate the analytics report:

1. It imports the necessary packages for making HTTP requests, parsing JSON data, and working with files.
2. It defines two constants: the base URL for the Hashnode API and the API key required for authentication.
3. It defines a struct called `AnalyticsData` to hold the analytics data fetched from the API.
4. The `main()` function:
   - Constructs the API endpoint URL by combining the base URL and the API key.
   - Makes an HTTP GET request to the endpoint using the `http.Get()` function.
   - Reads the response body and unmarshals the JSON data into the `AnalyticsData` struct.
   - Creates a new CSV file called `analytics_report.csv`.
   - Writes the analytics data to the CSV file in a formatted manner.
   - Prints a success message.


## Here's a breakdown of the script:

1. **Imports**: The script imports the necessary packages for making HTTP requests, parsing JSON data, and working with files. [citation:1]

2. **Constants**: The script defines two constants:
   - `apiUrl`: the base URL for the Hashnode API.
   - `apiKey`: the API key required to authenticate with the Hashnode API. [citation:1]

3. **AnalyticsData Struct**: The script defines a struct called `AnalyticsData` to hold the analytics data fetched from the API. It has three fields: `Views`, `Comments`, and `Likes`. [citation:1]

4. **main() Function**:
   - The function constructs the API endpoint URL by combining the `apiUrl` and the `apiKey`.
   - It then makes an HTTP GET request to the endpoint using the `http.Get()` function. [citation:1]
   - If there are any errors during the request, the function prints an error message and returns.
   - The function reads the response body using `ioutil.ReadAll()`. [citation:1]
   - It then unmarshals the JSON data into the `AnalyticsData` struct. [citation:1]
   - The function creates a new file called `analytics_report.csv` using `os.Create()`. [citation:1]
   - It writes the analytics data to the CSV file in a formatted manner.
   - Finally, the function prints a success message.
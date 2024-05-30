package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
)

const apiUrl = "https://api.hashnode.com"
const apiKey = "your_hashnode_api_key"

type AnalyticsData struct {
	Views    int `json:"views"`
	Comments int `json:"comments"`
	Likes    int `json:"likes"`
}

func main() {
	endpoint := fmt.Sprintf("%s/analytics?apiKey=%s", apiUrl, apiKey)
	resp, err := http.Get(endpoint)
	if err != nil {
		fmt.Println("Error fetching analytics data:", err)
		return
	}
	defer resp.Body.Close()

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		fmt.Println("Error reading response body:", err)
		return
	}

	var data AnalyticsData
	if err := json.Unmarshal(body, &data); err != nil {
		fmt.Println("Error unmarshaling response:", err)
		return
	}

	file, err := os.Create("analytics_report.csv")
	if err != nil {
		fmt.Println("Error creating report file:", err)
		return
	}
	defer file.Close()

	fmt.Fprintf(file, "Views,Comments,Likes\n")
	fmt.Fprintf(file, "%d,%d,%d\n", data.Views, data.Comments, data.Likes)
	fmt.Println("Analytics report generated successfully")
}

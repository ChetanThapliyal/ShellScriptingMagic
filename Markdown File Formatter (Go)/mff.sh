package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strings"
)

func main() {
	files := []string{"file1.md", "file2.md"} // Replace with your files
	for _, file := range files {
		checkFile(file)
	}
}

func checkFile(filename string) {
	file, err := os.Open(filename)
	if err != nil {
		fmt.Println("Error opening file:", err)
		return
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	lineNumber := 1
	brokenLinkPattern := regexp.MustCompile(`\[.*\]\(.*\)`)
	missingMetadataPattern := regexp.MustCompile(`^---$`)
	formattingIssues := false

	for scanner.Scan() {
		line := scanner.Text()
		if brokenLinkPattern.MatchString(line) && !strings.Contains(line, "http") {
			fmt.Printf("Broken link detected in file %s at line %d: %s\n", filename, lineNumber, line)
			formattingIssues = true
		}
		if missingMetadataPattern.MatchString(line) {
			fmt.Printf("Missing metadata detected in file %s at line %d\n", filename, lineNumber)
			formattingIssues = true
		}
		lineNumber++
	}

	if !formattingIssues {
		fmt.Printf("No issues found in file %s\n", filename)
	}
}

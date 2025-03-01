package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

func main() {
	source, err := os.Open("queries_script/queries.sql")
	if err != nil {
		log.Fatalf("failed to open queries.sql. err: %v", err)
	}
	defer source.Close()

	queryFileNum := 1
	queryFile, err := getCleanQueryFile(queryFileNum)
	if err != nil {
		log.Fatalf("failed to create query file. err: %v", err)
	}

	scanner := bufio.NewScanner(source)
	for scanner.Scan() {
		line := strings.Trim(scanner.Text(), " ")
		if line == "" {
			queryFile.Close()
			queryFileNum++
			queryFile, err = getCleanQueryFile(queryFileNum)
			if err != nil {
				log.Fatalf("failed to create query file. err: %v", err)
			}
			continue
		}

		_, err = queryFile.WriteString(fmt.Sprintf("%s\n", line))
		if err != nil {
			log.Fatalf("failed to write to query file. err: %v", err)
		}
	}

	queryFile.Close()
}

func getCleanQueryFile(num int) (*os.File, error) {
	file, err := os.OpenFile(fmt.Sprintf("internal/db/queries/query-%d.sql", num), os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		return nil, err
	}
	file.Truncate(0)
	file.Seek(0, 0)
	return file, nil
}

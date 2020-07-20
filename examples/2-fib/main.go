package main

import (
	"fmt"
	"os"
	"strconv"
	"time"
)

func fib() func() int {
	i, j := 0, 1
	return func() int {
		i, j = j, i+j
		return j - i
	}
}

var dur int

func init() {
	duration, ok := os.LookupEnv("DURATION")

	i, err := strconv.Atoi(duration)

	if !ok || err != nil {
		dur = 1
	}

	dur = i
}

func main() {
	// i := flag.Int("dur", 1, "produce values every x seconds")
	// flag.Parse()

	duration := time.Second * time.Duration(dur)

	next := fib()
	fmt.Println("Producing values every: ", duration)

	for {
		fmt.Println("Next: ", next())
		time.Sleep(duration)
	}
}

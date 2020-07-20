package main

import (
	"flag"
	"fmt"
	"time"
)

func fib() func() int {
	i, j := 0, 1
	return func() int {
		i, j = j, i+j
		return j - i
	}
}

func main() {
	i := flag.Int("dur", 1, "produce values every x seconds")
	flag.Parse()

	next := fib()

	for {
		fmt.Println("Next: ", next())
		time.Sleep(time.Second * time.Duration(*i))
	}
}

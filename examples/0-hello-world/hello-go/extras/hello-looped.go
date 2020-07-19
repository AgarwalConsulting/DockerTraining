package main

import (
	"fmt"
	"os"
	"time"
)

func main() {
	fmt.Println("Hello, world from Go!")
	fmt.Println(os.Args)
	i := 0
	for {
		fmt.Println("Seq: ", i)
		i++
		if i == 10 {
			// Exit Code is Non-zero => Error on 10th iteration

			// j := 0
			// fmt.Println(i / j)
			// (or)
			os.Exit(1)

			// Exit Code is Zero => Normal - process completed - on 10th iteration

			// break
			// (or)
			// os.Exit(0)
		}
		time.Sleep(time.Second * 1)
	}
}

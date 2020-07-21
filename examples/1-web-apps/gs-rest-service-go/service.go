package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"
	"sync"

	"github.com/rs/cors"
)

// Greeting represents a greeting
type Greeting struct {
	Message string `json:"message"`
	ID      int    `json:"id"`
}

var mut sync.RWMutex
var counter int

func greetingHandler(w http.ResponseWriter, req *http.Request) {
	names, ok := req.URL.Query()["name"]

	if !ok {
		names = []string{"World"}
	}

	w.Header().Set("Content-Type", "application/json")

	mut.Lock()
	counter++
	mut.Unlock()

	mut.RLock()
	msg := Greeting{
		Message: fmt.Sprintf("Hello, %s!", names[0]),
		ID:      counter,
	}
	mut.RUnlock()

	json.NewEncoder(w).Encode(msg)
}

var port string

func init() {
	var ok bool
	port, ok = os.LookupEnv("PORT")

	if !ok {
		port = "8080"
	}
}

func main() {
	r := http.NewServeMux()

	r.HandleFunc("/greeting", greetingHandler)

	handler := cors.Default().Handler(r)

	log.Printf("Starting server on port: %s...\n", port)

	log.Fatal(http.ListenAndServe(":"+port, handler))
}

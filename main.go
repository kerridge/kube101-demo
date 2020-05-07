package main

import (
	"fmt"
	"net/http"
)

// Periodically used by Kubernetes to check pod status
func healthcheck(w http.ResponseWriter, r *http.Request) {
	fmt.Println("We healthy my guuuy")
	w.WriteHeader(http.StatusOK)
}

// Used by Kubernetes to check pod was successfully spun up
func readiness(w http.ResponseWriter, r *http.Request) {
	fmt.Println("We ready my guuuy")
	w.WriteHeader(http.StatusOK)
}

// Our homepage
func index(w http.ResponseWriter, r *http.Request) {
	fmt.Println("Weeeeeeeelcome hooooooome, from the bottom of my heart")
	fmt.Fprintf(w, "<h1>Hello, World</h1>")
}

func main() {
	// assign endpoints to our serving functions
	http.HandleFunc("/", index)
	http.HandleFunc("/health", healthcheck)
	http.HandleFunc("/ready", readiness)

	fmt.Println("Starting server my dude...")

	// start listening on port 9090
	http.ListenAndServe(":9090", nil)
}

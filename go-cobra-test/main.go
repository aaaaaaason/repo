package main

import (
	"fmt"

	"github.com/spf13/cobra"
)

func main() {
	fmt.Println("Hello World")
	c := cobra.Command{}
	fmt.Println(c)
}

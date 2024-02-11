# Haskell-Programs-Sampler

## Introduction to Haskell

Haskell is a functional programming language known for its strong static typing, purity, and laziness. It provides elegant and concise syntax for writing complex programs, making it a popular choice for building scalable and reliable software systems. Haskell encourages a declarative programming style, where functions are defined as mathematical expressions, facilitating reasoning about code and enabling powerful abstractions.

## About This Repository

This repository serves as a sampler showcasing various Haskell programs. Each program demonstrates different aspects of the language, ranging from basic syntax to more advanced topics like web scraping and GUI development. Whether you're new to Haskell or looking to explore its capabilities further, this repository provides a diverse collection of programs to study and learn from.

## Installation

To install the necessary dependencies for running the programs, you can use either Stack or Cabal package managers. Make sure you have Haskell and the respective package manager installed on your system.

- ### Using Stack:

```stack install --dependencies-only $(grep -v '^#' requirements.txt)```

- ### Using Cabal:

```cabal install --dependencies-only $(grep -v '^#' requirements.txt)```

## Programs Included

### 1. Hello World

- **File:** [helloWorld.hs](helloWorld.hs)
- **Description:** A simple "Hello, World!" program demonstrating basic IO operations in Haskell.

### 2. Fibonacci Sequence

- **File:** [fibonacci.hs](fibonacci.hs)
- **Description:** Generates the Fibonacci sequence up to a given limit using functional programming techniques.

### 3. Prime Number Generator

- **File:** [primes.hs](primes.hs)
- **Description:** Generates prime numbers up to a given limit using the Sieve of Eratosthenes algorithm.

### 4. File Manipulation

- **File:** [fileManipulation.hs](fileManipulation.hs)
- **Description:** Reads from and writes to files using Haskell's IO operations.

### 5. Sorting Algorithms

- **File:** [sortingAlgorithms.hs](sortingAlgorithms.hs)
- **Description:** Implements QuickSort and MergeSort algorithms for sorting lists of elements.

### 6. Data Structures

- **File:** [dataStructures.hs](dataStructures.hs)
- **Description:** Implements basic data structures like binary trees and demonstrates their usage.

### 7. Web Scraper

- **File:** [webScraper.hs](webScraper.hs)
- **Description:** A simple web scraper that extracts links from a web page using Haskell's HTTP and HTML parsing libraries.

### 8. API Client

- **File:** [apiClient.hs](apiClient.hs)
- **Description:** Fetches posts from a JSONPlaceholder API and demonstrates JSON parsing in Haskell.

### 9. Web Server

- **File:** [webServer.hs](webServer.hs)
- **Description:** Sets up a simple web server using the Yesod framework in Haskell, serving a "Hello, Yesod!" message on the homepage.

### 10. GUI Application

- **File:** [guiApplication.hs](guiApplication.hs)
- **Description:** Creates a basic GUI application using GTK+ library in Haskell, displaying a "Hello, GTK+!" message in a window.

---

Feel free to dive into the programs, study their implementations, and use them as a reference for your Haskell projects. Happy coding!

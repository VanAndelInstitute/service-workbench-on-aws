// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0
package main

import (
    "flag"
    "fmt"
    "strconv"

    "github.com/aws/aws-sdk-go/aws"
    "github.com/aws/aws-sdk-go/aws/session"
    "github.com/aws/aws-sdk-go/service/dynamodb"
    "github.com/aws/aws-sdk-go/service/dynamodb/dynamodbiface"
)

// UpdateMovie updates the year and rating of a movie in a table
// Inputs:
//     sess is the current session, which provides configuration for the SDK's service clients
//     tableName is the name of the table
//     movieName is the name of the movie
//     movieYear is the year the movie was released
//     movieRating is the rating, from 0.0 to 1.0, of the movie
// Output:
//     If success, nil
//     Otherwise, an error from the call to UpdateItem
func UpdateMovie(svc dynamodbiface.DynamoDBAPI, table, movie, year, rating *string) error {
    input := &dynamodb.UpdateItemInput{
        ExpressionAttributeValues: map[string]*dynamodb.AttributeValue{
            ":r": {
                N: rating,
            },
        },
        TableName: table,
        Key: map[string]*dynamodb.AttributeValue{
            "Year": {
                N: year,
            },
            "Title": {
                S: movie,
            },
        },
        ReturnValues:     aws.String("UPDATED_NEW"),
        UpdateExpression: aws.String("set Rating = :r"),
    }

    _, err := svc.UpdateItem(input)
    if err != nil {
        return err
    }

    return nil
}

func main() {
    table := flag.String("t", "", "The name of the table")
    movie := flag.String("m", "", "The name of the movie")
    year := flag.String("y", "", "The year the movie was made")
    rating := flag.String("r", "", "The rating, from 0 (zero) to 1 (one)")
    flag.Parse()

    if *table == "" || *movie == "" || *year == "" || *rating == "" {
        fmt.Println("You must supply a table name (-t TABLE), movie name (-m MOVIE), movie year (-y YEAR), and rating (-r RATING)")
        return
    }

    // Make sure rating is in the range 0 to 1, and year is in the range 1900 - 2020
    yearInt, err := strconv.Atoi(*year)
    if err != nil {
        fmt.Println("Year is not an integer value")
        return
    }

    if yearInt < 1900 {
        *year = "1900"
    } else if yearInt > 2020 {
        *year = "2020"
    }

    ratingFloat, err := strconv.ParseFloat(*rating, 64)
    if err != nil {
        fmt.Println("Rating is not a floating-point value")
        return
    }

    if ratingFloat < 0.0 {
        *rating = "0.0"
    } else if ratingFloat > 1.0 {
        *rating = "1.0"
    }

    sess := session.Must(session.NewSessionWithOptions(session.Options{
        SharedConfigState: session.SharedConfigEnable,
    }))

    svc := dynamodb.New(sess)

    err = UpdateMovie(svc, table, movie, year, rating)
    if err != nil {
        fmt.Println(err)
        return
    }

    fmt.Println("Successfully updated '" + *movie + "' (" + *year + ") rating to " + *rating)
}

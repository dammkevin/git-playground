BEGIN {
    FS = ","
    sum_small_orders = 0
    count_small_orders = 0
    count_retail = 0
}

NR == 1 {
    next
}

{
    transaction_total = $3
    num_items = $4
    transaction_type = $2
    
    if (num_items <= 3) {
        sum_small_orders += transaction_total
        count_small_orders++
    }
    
    if (transaction_type == "retail") {
        count_retail++
    }
}

END {
    if (count_small_orders > 0) {
        avg_small_orders = sum_small_orders / count_small_orders
        printf("Avg small orders = %.3f\n", avg_small_orders)
    } else {
        printf("Avg small orders = 0.000\n")
    }

    printf("Count retail = %d\n", count_retail)
}

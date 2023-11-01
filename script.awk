BEGIN {
    FS = ","
    basketball_wins = 0
    basketball_diff_sum = 0
    soccer_football_home_count = 0
}

$2 == "basketball(M)" {
    basketball_wins++
    basketball_diff_sum += $4 - $6
}

($2 == "football" || $2 == "soccer(W)") && $7 == "yes" {
    soccer_football_home_count++
}

END {
    if (basketball_wins > 0) {
        avg_bball_diff = basketball_diff_sum / basketball_wins
        print "Avg bball score differential =", avg_bball_diff
    } else {
        print "Avg bball score differential = 0"
    }
    
    print "Soccer/football home count =", soccer_football_home_count
}


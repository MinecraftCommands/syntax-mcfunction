class folder_one.folder_two
{
    function folder_three.function_name() {
        say "Code example 1";
        say "Code example 2";
    }
    new file_type(folder_name.json_file_name) { // See JSON Files page for this feature
        JSON_CONTENT
    }
}

folder_one.folder_two.folder_three.function_name();

if ($deathCount>5 ) {
    say "More than 5 death!";
} else if ($deathCount matches 2..3 ) {
    say "Between 2 to 3 death!";
} else if ($deathCount) {
    say "At least 1 death";
}

#!/usr/bin/perl -w

# Copy files from current directory to a location set in this file.
# (Used to efficiently copy >30,000 email files.)

use File::Copy;         # provides move cmd
use strict;             # Enforce declarations
use Cwd;

my (
    $dir, $file, $filename, $file_count
    );

$dir = cwd();
$file_count = 0;

opendir(DIR, $dir) or die "Can't opendir $dir: $!\n";
while( defined ($file = readdir DIR) )
{
    next if $file =~ /^\.\.?$/; # skip curr, parent dir
    next if $file =~ /^\..*/;   # skip hidden

    $filename = "/test-data/receipts/input/" . $file;

    copy($file, $filename) or
    die "unable to move file $file: $!\n";

    $file_count++;
    if ($file_count % 1000 == 0)
    {
    	printf "Copied " . $file_count . " files.\n";
    }

}

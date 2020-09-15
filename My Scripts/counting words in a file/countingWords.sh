#!/bin/bash

{
cat samplefiles/sample_file3 |
tr -c '[:alnum:]' '[\n*]' |
sort |
grep -viw -e 'a' -e 'an' -e 'the' -e 'I' -e 'you' -e 'he' -e 'she' -e 'it' -e 'they' -e 'them' -e 'we' -e 'us' -e 't' | # 't' is only excluded because otherwise it would be accounted for within conjunctions. This is an easy work-around since 't' is not a word on its own anyways.
uniq -c |
sort -nr |
awk '{if(NR>1 && NR<=11)print}' # "head -10" will not work because the first result would be the number of results which did not return a successful search. That is the reason why this line displays the results from line 2 to line 11, omitting the false positive result from line 1.
}

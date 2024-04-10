total_subjects=5
total_marks=500
declare -a subject_marks

for ((i = 1; i <= $total_subjects; i++)); do
    echo -n "Enter marks for Subject $i: "
    read subject_marks[$i]
done

total_obtained=0
for ((i = 1; i <= $total_subjects; i++)); do
    total_obtained=$((total_obtained + subject_marks[$i]))
done

percentage=$((total_obtained * 100 / total_marks))

if ((percentage >= 90)); then
    grade="A"
elif ((percentage >= 80)); then
    grade="B"
elif ((percentage >= 70)); then
    grade="C"
elif ((percentage >= 60)); then
    grade="D"
else
    grade="F"
fi

echo "Total Marks Obtained: $total_obtained out of $total_marks"
echo "Percentage: $percentage%"
echo "Grade: $grade"

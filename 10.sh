echo "Menu Options:"
echo "1. Chalo"
echo "2. Phir"
echo "3. Milte Hai"
echo "4. Exit"

echo -n "Choose an option (1-4): " 
read choice

case $choice in
    1)
        echo "Chalo"
        ;;
    2)
        echo "Phir"
        ;;
    3)
        echo "Milte Hai"
        ;;
    4)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please choose a number between 1 and 4."
        ;;
esac

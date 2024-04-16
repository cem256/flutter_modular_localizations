# Execute the command at the root of the project
echo "Generating localizations at the root of the project"
flutter gen-l10n

cd modules

for d in */; do
    echo "Generating localizations in $d"
    cd "$d"
    flutter gen-l10n
    cd ..
done

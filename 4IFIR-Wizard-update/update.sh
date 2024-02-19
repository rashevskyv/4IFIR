new_version=$(date "+%y.%m.%d.%H")
sed -i "s/;version='[0-9.]*'/;version='$new_version'/g" 4ifir\ Wizard\ source\ code/config.ini
rm -v 4IFIR-Wizard-update/4IFIR\ Wizard/files.zip
cd 4ifir\ Wizard\ source\ code/
zip -r ../4IFIR-Wizard-update/4IFIR\ Wizard/files.zip ./*
cd ../4IFIR-Wizard-update
rm -v "4IFIR-Wizard-update-$new_version.zip"
zip -r "4IFIR-Wizard-update-$new_version.zip" ./4IFIR\ Wizard
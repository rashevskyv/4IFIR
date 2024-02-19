rm -v 4IFIR-Wizard-update/switch/.packages/4IFIR\ Wizard/files.zip
cd 4ifir\ Wizard\ source\ code/
zip -r ../4IFIR-Wizard-update/switch/.packages/4IFIR\ Wizard/files.zip ./*
cd ../4IFIR-Wizard-update
rm -v "4IFIR-Wizard-update-$(date +"%d.%m.%y-%H").zip"
zip -r "4IFIR-Wizard-update-$(date +"%d.%m.%y-%H").zip" ./switch
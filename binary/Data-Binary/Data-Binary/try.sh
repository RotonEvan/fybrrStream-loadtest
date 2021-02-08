for FILE in *
do
for InnerFile in "$FILE"/*
do
	suffix="${InnerFile##*_}"
	if [[ "$suffix" = "connections.json" ]]
	then
		cp "$InnerFile" "Connections"
	fi
done
done

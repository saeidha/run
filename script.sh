#!/bin/bash





# Check that auth token parameter is passed
if [ -z "$1" ]; then
    echo "Error: Auth token not provided"
    exit 1
fi

# Get auth token from first parameter 
authtoken=$1
# authtoken="54BEF2B9E671228B-2BEB55FA59C64223-BF4F9CB0DF9BCAE-E0250-8DC2027053F8B93-9Jj8AHk2n8oMi6hFiZeRFaHKODjTi2RYm1BE8yYE5ao="
# entityToken="NHx5a3RlWFMxSXo2dkNXTDliLzNQNXNBamZvbG94Q3hLZlAzVFlwK1orbmxJPXx7ImkiOiIyMDI0LTAxLTI4VDE3OjMxOjU0WiIsImlkcCI6IlBsYXlGYWIiLCJlIjoiMjAyNC0wMS0yOVQxNzozMTo1NFoiLCJmaSI6IjIwMjQtMDEtMjhUMTc6MzE6NTRaIiwidGlkIjoiayszaytVNzRNclkiLCJpZGkiOiI1NEJFRjJCOUU2NzEyMjhCIiwiaCI6IkFDRDY2MEQ2NUNCQUUzQjUiLCJlYyI6InRpdGxlX3BsYXllcl9hY2NvdW50ITJCRUI1NUZBNTlDNjQyMjMvRTAyNTAvNTRCRUYyQjlFNjcxMjI4Qi9CRjRGOUNCMERGOUJDQUUvIiwiZWkiOiJCRjRGOUNCMERGOUJDQUUiLCJldCI6InRpdGxlX3BsYXllcl9hY2NvdW50In0="


# Generate a random number between 150 and 190
random_number=$((RANDOM % 41 + 150))
# Create a for loop that iterates from 0 to the random number
# For loop
for ((i=0;i<=random_number;i++)); do
    if [ $i -ne 0 ]
    then
        newamount=$((i*10))
    else
        newamount=0
    fi
  amount4=$((newamount+4))
  amount9=$((newamount+9))
  amount10=$((newamount+10))
  echo "$amount4 $amount9 $amount10"


  curl 'https://e0250.playfabapi.com/Client/UpdatePlayerStatistics?sdk=UnitySDK-2.173.230804' \
  -X POST \
  -H 'Host: e0250.playfabapi.com' \
  -H 'X-Unity-Version: 2022.3.14f1' \
  -H 'Accept: */*' \
  -H 'X-Authorization: '"$authtoken" \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'X-ReportErrorAsSuccess: true' \
  -H 'X-PlayFabSDK: UnitySDK-2.173.230804' \
  -H 'User-Agent: Unfettered%20Awakening/20 CFNetwork/1490.0.4 Darwin/23.2.0' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json' \
  --data-raw '{"CustomTags":null,"Statistics":[{"StatisticName":"Survivors","Value":'$amount4',"Version":null}],"AuthenticationContext":null}'

  curl 'https://e0250.playfabapi.com/Client/UpdatePlayerStatistics?sdk=UnitySDK-2.173.230804' \
  -X POST \
  -H 'Host: e0250.playfabapi.com' \
  -H 'X-Unity-Version: 2022.3.14f1' \
  -H 'Accept: */*' \
  -H 'X-Authorization: '"$authtoken" \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'X-ReportErrorAsSuccess: true' \
  -H 'X-PlayFabSDK: UnitySDK-2.173.230804' \
  -H 'User-Agent: Unfettered%20Awakening/20 CFNetwork/1490.0.4 Darwin/23.2.0' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json' \
  --data-raw '{"CustomTags":null,"Statistics":[{"StatisticName":"Survivors","Value":'$amount9',"Version":null}],"AuthenticationContext":null}'

  curl 'https://e0250.playfabapi.com/Client/UpdatePlayerStatistics?sdk=UnitySDK-2.173.230804' \
  -X POST \
  -H 'Host: e0250.playfabapi.com' \
  -H 'X-Unity-Version: 2022.3.14f1' \
  -H 'Accept: */*' \
  -H 'X-Authorization: '"$authtoken" \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'X-ReportErrorAsSuccess: true' \
  -H 'X-PlayFabSDK: UnitySDK-2.173.230804' \
  -H 'User-Agent: Unfettered%20Awakening/20 CFNetwork/1490.0.4 Darwin/23.2.0' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json' \
  --data-raw '{"CustomTags":null,"Statistics":[{"StatisticName":"Survivors","Value":'$amount10',"Version":null}],"AuthenticationContext":null}'

done

lastAmount=$((random_number+10))
random_numberr=$((RANDOM % 11))
lastAmount=$((lastAmount + random_numberr))
echo "$lastAmount"

curl 'https://e0250.playfabapi.com/Client/UpdatePlayerStatistics?sdk=UnitySDK-2.173.230804' \
  -X POST \
  -H 'Host: e0250.playfabapi.com' \
  -H 'X-Unity-Version: 2022.3.14f1' \
  -H 'Accept: */*' \
  -H 'X-Authorization: '"$authtoken" \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'X-ReportErrorAsSuccess: true' \
  -H 'X-PlayFabSDK: UnitySDK-2.173.230804' \
  -H 'User-Agent: Unfettered%20Awakening/20 CFNetwork/1490.0.4 Darwin/23.2.0' \
  -H 'Connection: keep-alive' \
  -H 'Content-Type: application/json' \
  --data-raw '{"CustomTags":null,"Statistics":[{"StatisticName":"Survivors","Value":'$lastAmount',"Version":null}],"AuthenticationContext":null}'



# curl 'https://e0250.playfabapi.com/CloudScript/ExecuteFunction?sdk=UnitySDK-2.173.230804' \
#   -X POST \
#   -H 'Host: e0250.playfabapi.com' \
#   -H 'X-Unity-Version: 2022.3.14f1' \
#   -H 'Accept: */*' \
#   -H 'Accept-Language: en-US,en;q=0.9' \
#   -H 'X-ReportErrorAsSuccess: true' \
#   -H 'X-EntityToken: '"$entityToken" \
#   -H 'Content-Length: 260' \
#   -H 'User-Agent: Unfettered%20Awakening/21 CFNetwork/1490.0.4 Darwin/23.2.0' \
#   -H 'Connection: keep-alive' \
#   -H 'X-PlayFabSDK: UnitySDK-2.173.230804' \
#   -H 'Content-Type: application/json' \
#   --data-raw '{"CustomTags":null,"Entity":{"Id":"F6871D5DC780A3D0","Type":"title_player_account"},"FunctionName":"claimDefinition","FunctionParameter":{"amount":1,"to":"0x169F6C1d7100D00DB17eFc88F2436A4237e8EadC"},"GeneratePlayStreamEvent":null,"AuthenticationContext":null}' \
#   --proxy http://localhost:9090

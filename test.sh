RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

for i in {1..5};do ./resources/filler_vm -f resources/maps/map02 -p1 ./fchuc.filler -p2 resources/players/$1 > quiet | tail -2;
	line=`grep won filler.trace`
	if [ "$line" = './fchuc.filler won' ];
	then 
		echo ${GREEN}WON${NC}
	else 
		echo ${RED}LOOSE${NC}
	fi
done

var
	list/scoreboard[0]
	score_show=0
	score_title="Level"

world
	New()
		scoreboard_handling("load")
		..()
	Del()
		scoreboard_handling("save")
		..()

proc

	invert_list(list/l)
		var/theList[0]
		for(var/i=length(l),i != 0,i--)
			theList+=l[i]
		return theList

	invert_text(t as text)
		var/new_text
		var/new_list[0]
		for(var/i=1,i <= length(t),i++)
			new_list+="[copytext(t,i,i+1)]"
		new_list=invert_list(new_list)
		for(var/v in new_list)
			new_text+="[v]"
		return new_text

	add_commas(t as text)
		t=invert_text(t)
		var/new_text
		var/counter=0
		for(var/i=1,i <= length(t),i++)
			new_text+="[copytext(t,i,i+1)]"
			counter++
			if(counter==3)
				if(i != length(t))
					new_text+=","
				counter=0
		new_text=invert_text(new_text)
		return new_text

	add_score(name, key, date, score)
		var/old_entry
		for(var/v in scoreboard)
			var/list/old_entry_list=params_2_list(v)
			if(old_entry_list[1]==name && old_entry_list[2]==key)
				old_entry=v
		if(old_entry)
			var/list/old_entry_list=params_2_list(old_entry)
			var/old_score=text2num(old_entry_list[4])
			if(old_score >= score)
				return
			else
				scoreboard-=old_entry
				scoreboard+="[name];[key];[date];[score]"
		else
			scoreboard+="[name];[key];[date];[score]"
		scoreboard=sort_scoreboard()

	sort_scoreboard()
		var/list/new_scoreboard[0]
		var/list/names[0]
		var/list/keys[0]
		var/list/dates[0]
		var/list/scores[0]
		for(var/v in scoreboard)
			var/list/entry=params_2_list(v)
			names+=entry[1]
			keys+=entry[2]
			dates+=entry[3]
			scores+=text2num(entry[4])
		for(var/i=length(scores),i != 0,i--)
			var/pos=scores.Find(max(scores))
			var/new_name=names[pos]
			var/new_key=keys[pos]
			var/new_date=dates[pos]
			var/new_score=scores[pos]
			names.Cut(pos,pos+1)
			keys.Cut(pos,pos+1)
			dates.Cut(pos,pos+1)
			scores.Cut(pos,pos+1)
			new_scoreboard+="[new_name];[new_key];[new_date];[new_score]"
		return new_scoreboard

	get_date()
		var/month="[time2text(world.timeofday,"MM")]"
		if(copytext(month,1,2)=="0") month=copytext(month,2)
		var/day="[time2text(world.timeofday,"DD")]"
		if(copytext(day,1,2)=="0") day=copytext(day,2)
		var/year="[time2text(world.timeofday,"YY")]"
		var/date="[day]/[month]/[year]"
		return date

	scoreboard_handling(action)
		if(action=="save")
			var/savefile/s=new("ranking.sav")
			s["scoreboard"]<<scoreboard
		if(action=="load")
			if(fexists("ranking.sav"))
				var/savefile/s=new("ranking.sav")
				s["scoreboard"]>>scoreboard
				scoreboard=sort_scoreboard()

	params_2_list(string)
		var/return_list[0]
		var/theMarker=findtext(string,";")
		while(theMarker)
			return_list+=copytext(string,1,theMarker)
			if(findtext(string,";") && length(string) > 1)
				string=copytext(string,theMarker+1)
				theMarker=findtext(string,";")
		return_list+=string
		return return_list

mob
	verb
		Ranking()
			var/counter=1
			var/scoreboard_html={"<title>NRB - Top Levels</title>[csss]<table id="scoreboard" width="100%"><tr><td id="header_row">Rank:</td><td id="header_row">Nome (Key):</td><td id="header_row">Data:</td><td id="header_row">[score_title]:</td></tr>"}
			for(var/v in scoreboard)
				var/list/score_entry=params_2_list(v)
				var/list/row_id="[(counter%2) ? "even_row" : "odd_row"]"
				if(!score_show)
					scoreboard_html+={"<tr><td id="[row_id]">[counter]\th</td><td id="[row_id]">[score_entry[1]] <i>(<a target="_blank" href="http://byond.com/members/[ckey(score_entry[2])]">[score_entry[2]]</a>)</td><td id="[row_id]">[score_entry[3]]</td><td id="[row_id]">[add_commas(num2text(text2num(score_entry[4]),10))]</td></tr>"}
					counter++
				else if(counter <= score_show)
					scoreboard_html+={"<tr><td id="[row_id]">[counter]\th</td><td id="[row_id]">[score_entry[1]] <i>(<a target="_blank" href="http://byond.com/members/[ckey(score_entry[2])]">[score_entry[2]]</a>)</td><td id="[row_id]">[score_entry[3]]</td><td id="[row_id]">[add_commas(num2text(text2num(score_entry[4]),10))]</td></tr>"}
					counter++
			scoreboard_html+="</table>"
			src<<browse(scoreboard_html,"window=Scoreboard;size=450x500")
var/csss={"
<style type='text/css'>

body{
  color: #000000;
  background-color: #191970;}

a:link, a:visited{
  height:0px;
  width:inherit;
  color: #000000;
  text-decoration: none;}

a:hover {
  color: #FF4500;
  text-decoration: none;}

#scoreboard {
  border: 2px outset #c0c0c0;
  background-color: #c0c0c0;
  width: 100%;}

#header_row {
  text-align: center;
  padding: 8px;
  background-color: #c0c0c0;
  font-weight: bold;
  font-family: Tahoma;
  font-size: 12px;
  color: #000000;}

#even_row {
  text-align: center;
  padding: 8px;
  background-color: #d2d2d2;
  font-family: Tahoma;
  font-size: 12px;
  color: #000000;
  border: 1px solid #c0c0c0;}

#odd_row {
  text-align: center;
  padding: 8px;
  background-color: #dcdcdc;
  font-family: Tahoma;
  font-size: 12px;
  color: #000000;
  border: 1px solid #c8c8c8;}

</style>
"}
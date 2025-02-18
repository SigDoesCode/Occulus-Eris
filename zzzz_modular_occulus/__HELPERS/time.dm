//Takes a value of time in deciseconds.
//Returns a text value of that number in hours, minutes, or seconds.
// yoinked from para for display
/proc/DisplayTimeText(time_value)
	var/second = time_value * 0.1
	var/second_adjusted = null
	var/second_rounded = FALSE
	var/minute = null
	var/hour = null
	var/day = null

	if(!second)
		return "0 seconds"
	if(second >= 60)
		minute = FLOOR(second / 60, 1)
		second = round(second - (minute * 60), 0.1)
		second_rounded = TRUE
	if(second)	//check if we still have seconds remaining to format, or if everything went into minute.
		second_adjusted = round(second)	//used to prevent '1 seconds' being shown
		if(day || hour || minute)
			if(second_adjusted == 1 && second >= 1)
				second = " and 1 second"
			else if(second > 1)
				second = " and [second_adjusted] seconds"
			else	//shows a fraction if seconds is < 1
				if(second_rounded) //no sense rounding again if it's already done
					second = " and [second] seconds"
				else
					second = " and [round(second, 0.1)] seconds"
		else
			if(second_adjusted == 1 && second >= 1)
				second = "1 second"
			else if(second > 1)
				second = "[second_adjusted] seconds"
			else
				if(second_rounded)
					second = "[second] seconds"
				else
					second = "[round(second, 0.1)] seconds"
	else
		second = null

	if(!minute)
		return "[second]"
	if(minute >= 60)
		hour = FLOOR(minute / 60, 1)
		minute = (minute - (hour * 60))
	if(minute) //alot simpler from here since you don't have to worry about fractions
		if(minute != 1)
			if((day || hour) && second)
				minute = ", [minute] minutes"
			else if((day || hour) && !second)
				minute = " and [minute] minutes"
			else
				minute = "[minute] minutes"
		else
			if((day || hour) && second)
				minute = ", 1 minute"
			else if((day || hour) && !second)
				minute = " and 1 minute"
			else
				minute = "1 minute"
	else
		minute = null

	if(!hour)
		return "[minute][second]"
	if(hour >= 24)
		day = FLOOR(hour / 24, 1)
		hour = (hour - (day * 24))
	if(hour)
		if(hour != 1)
			if(day && (minute || second))
				hour = ", [hour] hours"
			else if(day && (!minute || !second))
				hour = " and [hour] hours"
			else
				hour = "[hour] hours"
		else
			if(day && (minute || second))
				hour = ", 1 hour"
			else if(day && (!minute || !second))
				hour = " and 1 hour"
			else
				hour = "1 hour"
	else
		hour = null

	if(!day)
		return "[hour][minute][second]"
	if(day > 1)
		day = "[day] days"
	else
		day = "1 day"

	return "[day][hour][minute][second]"
View(sdat)
sdat$Team
sdat$Injuries
sdat$Time
sdat$Region

ts =  as.numeric(gsub(pattern="[0-9]*(:)",replacement="",x=sdat$Time))
tm =  as.numeric(gsub(pattern="(:)[0-9]*",replacement="",x=sdat$Time))
ttm = tm + (ts/60)
sdat$Time = ttm


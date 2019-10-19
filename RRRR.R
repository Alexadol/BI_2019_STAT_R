#1
shapiro.test(cabbages$HeadWt)
#по этим данным близко к нормальному, но на грани
#QQPLOT НЕ УСПЕЛА
ggplot(cabbages, aes(cabbages$HeadWt))+geom_density()+facet_grid(cabbages_cult)
#тут еще похоже на нормальное
ggplot(cabbages, aes(cabbages$HeadWt))+geom_density()+facet_grid(cabbages$Cult)
№здесь точно далеко от нормальног




#2
cabbages_c39 <- cabbages[cabbages$Cult=='c39']
result_full<-cabbages_c39[order(cabbages_c39$HeadWt,decreasing = T),]
result <- result_full[1:5,]
#������� 9

#1
shapiro.test(cabbages$HeadWt)
#�� ���� ������ ������ � �����������, �� �� �����
#QQPLOT �� ������
ggplot(cabbages, aes(cabbages$HeadWt))+geom_density()
#��� ��� ������ �� ����������
ggplot(cabbages, aes(cabbages$HeadWt))+geom_density()+facet_grid(cabbages$Cult)
#����� ����� ������ �� ����������




#2
cabbages_c39 <- cabbages[cabbages$Cult=='c39']
result_full<-cabbages_c39[order(cabbages_c39$HeadWt,decreasing = T),]
result <- result_full[1:5,]
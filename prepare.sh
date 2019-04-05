#Use curl to download the text file hosted on my github. To download the original data, any user needed to wait in a queue
# for the download to be prepared. Thus I had to rehost it. The download was also slightly queried against the original
# database before downloading to make it quicker. Species only include humans. Country only USA. and Year 2000-2019.
curl -LJO https://github.com/DNAWright/BINF6211Project/raw/master/influenza_2000_human_usa_text.txt

#There are a few duplicate entries in the dataset, so I sorted the entries and removed any duplicates.
sudo sort -u 'influenza_2000_human_usa_text.txt' > influenza_clean_dat.txt

#Since the data was initially queried by USA and Human, there is no reason to include two columns stating all Human/USA.
# Flu season was removed because it isn't going to be used and the data is in multiple formats.
cut -f 1,2,3,4,5,6,7,10,12 influenza_clean_dat.txt > influenza_final_dat.txt
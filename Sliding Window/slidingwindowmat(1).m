HRP=imread('gwdr_1-1 (1).jpg');
a = 25.222266 ;
b = 62.172388;
c = 0.000686646/2;
d = 0.000585503/2;
i=1;
j=1;
count = 1;
while(j+255 <= size(HRP,1))
    i = 1;
    b = 62.172388 ;
    while (i+255 <= size(HRP,2))
        if (count/(5476*4) * 100 > 60)
        imwrite(HRP(j:j+255,i:i+255,:),fullfile('C:\Users\mkazmi\Music',strcat(num2str(b,16),'_',num2str(a,16),'.jpg')));
        end
        b = b + c;
        i = i + 256/2;
        count = count + 1;
    end
    count/(5476*4) * 100
    a = a -d;
    j = j + 256/2;
end
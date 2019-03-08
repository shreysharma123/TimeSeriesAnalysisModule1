library(TSA)

# win.graph(width=4.875, height=2.5,pointsize=8)
data(larain)
plot(larain,ylab='Inches',xlab='Year',type='o')

plot(y=larain,x=zlag(larain),ylab='Inches', xlab='Previous Year Inches')

y = larain             # Read the annual rainfall data into y
x = zlag(larain)       # Generate first lag of the annual rainfall series
index = 2:length(x)    # Create an index to get rid of the first NA value in x
cor(y[index],x[index]) # Calculate correlation between numerical values in x and y
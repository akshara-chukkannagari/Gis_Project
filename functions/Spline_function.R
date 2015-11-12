### SPLINE-Interpolation  ####################################
### Ro Neumann, 2015 #########################################

### INPUT: 1. Time series with first column = time, 2nd  = data
###        2. Weight --> one is default
###        3. dof --> degrees of freedom
###        4. Smoothing -->usually between 0 and 1
### OUTPUT: Spline curve

Spline_function<-function (time, data1, smoothing) {
  
data= data.frame(time, data1)
  
dataNum = as.numeric(unlist(data))


dof = length(dataNum[1])


#Run spline
ppp <- smooth.spline(dataNum, y = NULL, w = NULL, dof, spar = smoothing)

# Get x & y values
splinex = unlist(ppp[1])
spliney = unlist(ppp[2])

# Create a grid to plot the different values of "a"
#par(mfrow=c(2,1))

# Detrend data
#data_reduced = data1-spliney


# PLOT Original data and trendline
# plot(time,data1,type="l",col="blue")

#plot(time, data1,type="l",col="blue", xlab ="time", ylab = "Data", main = "Spline curve filter")
plot(splinex,spliney,type="l",col="red")

# PLOT detrended data in new window
#plot(time,data_reduced,type="l",col="black", xlab ="time", ylab = "Data", main = "Residuals plot")

}
######################################################################

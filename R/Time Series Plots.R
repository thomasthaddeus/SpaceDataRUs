data$head

tsplot(x=time, y=data)

plot(ts(data, start=start_time, frequency=gap))

ts.plot(ts(data, start=start_time, frequency=gap))

Linear Filter: filter()

filter(data, filter=filter_coefficients, sides=2,
       method="convolution", circular=F)

Differencing Filter: diff()
diff(data, lag=4, differences=1)

acf(data, type=‘correlation’, na.action=na.pass)


ar(): To estimate parameters of an AR model
ar(x=data, aic=T, order.max = NULL,
   c("yule-walker", "burg", "ols", "mle", "yw"))


arima(): To estimate parameters of an AM or
ARMA model, and build model
arima(data, order=c(p, 0, q),method=c(‘ML’))




pacf()
pacf(data, na.action=na.pass)
OR: acf(data, type=‘partial’, na.action=na.pass)


fit<-predict(arima_model, number_to_predict)
ts.plot(data,
        xlim=c(1, length(data)+number_to_predict),
        ylim=c(0, max(fit$pred+1.96*fit$se)))
lines(length(data)+1:length(data)+
        number_to_predict, fit$pred)

autoplot(forecast(arima_model, level=c(95),
                  h=number_to_predict))






predict(arima_model, number_to_predict)
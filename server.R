
library(shiny)


library(readr)
tp <- read_csv("test_pm.csv")

library(RgoogleMaps)

# location: YuDa University, Zhunan Station, Zhunan and Toufen Intercept

lats <- c( 24.650138, 24.686601, 24.679427, 24.691631)

#輸入目標緯度

lons <- c(120.847179, 120.88063, 120.846945, 120.918313)

#輸入目標經度

center <- c(mean(lats), mean(lons))

#設定中心

zoom <- min(MaxZoom(range(lats), range(lons)))

#範圍設置

# download a static map from the Google server

MyMap <- GetMap(center=center, zoom=zoom, markers = "&markers=color:blue|label:G|24.651113,120.842976&markers=color:red|label:T|24.686601,120.88063&markers=color:red|color:red|label:I|24.679427,120.846945&markers=color:red|color:red|label:I|24.691631,120.918313", destfile="YuDa-map.png")

#取得其他位子與PNG檔

# add arrows

s <- seq(length(lats)-1)

#建立向量

PlotArrowsOnStaticMap(MyMap, lat0=lats[1], lon0=lons[1]+0.001, lat1=lats[s+1]+0.001, lon1=lons[s+1], col='red', lwd=2, code=1)

取得其他位子至目標位子的直線圖

shinyServer(function(input, output) {
  
  output$p1 <- renderPlot({

    plot(tp$`O3(ppm)`,
         probability = TRUE,
         type = "s",
         breaks = as.numeric(input$n_breaks),
         xlab = "Duration (second)",
         main = "O3(ppm)")
    
    
    if (input$individual_obs) {
      rug(tp$`O3(ppm)`)
    }
    
    if (input$density) {
      dens <- density(tp$`O3(ppm)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  
  output$p11 <- renderPlot({
    
    hist(tp$`O3(ppm)`,
         probability = TRUE,
         breaks = as.numeric(input$n_breaks),
         xlab = "03(ppm)",
         main = "O3(ppm)")
    
    
    if (input$individual_obs) {
      rug(tp$`O3(ppm)`)
    }
    
    if (input$density) {
      dens <- density(tp$`O3(ppm)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  
  output$p2 <- renderPlot({
    
  plot(tp$`PM2.5(ug/m3)`,
         probability = TRUE,
         type = "s",
         breaks = as.numeric(input$n_breaks),
         xlab = "Duration (second)",
         main = "PM2.5(ug/m3)")
    
    
    if (input$individual_obs) {
      rug(tp$`PM2.5(ug/m3)`)
    }
    
    if (input$density) {
      dens <- density(tp$`PM2.5(ug/m3)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  
  output$p22 <- renderPlot({
    
    hist(tp$`PM2.5(ug/m3)`,
         probability = TRUE,
         breaks = as.numeric(input$n_breaks),
         xlab = "PM2.5(ug/m3)",
         main = "PM2.5(ug/m3)")
    
    
    if (input$individual_obs) {
      rug(tp$`PM2.5(ug/m3)`)
    }
    
    if (input$density) {
      dens <- density(tp$`PM2.5(ug/m3)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  
  output$p3 <- renderPlot({
    
    plot(tp$`PM10(ug/m3)`,
         probability = TRUE,
         type = "s",
         breaks = as.numeric(input$n_breaks),
         xlab = "Duration (second)",
         main = "PM10(ug/m3)")
    
    
    if (input$individual_obs) {
      rug(tp$`PM10(ug/m3)`)
    }
    
    if (input$density) {
      dens <- density(tp$`PM10(ug/m3)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  
  output$p33 <- renderPlot({
    
    hist(tp$`PM10(ug/m3)`,
         probability = TRUE,
         breaks = as.numeric(input$n_breaks),
         xlab = "PM10(ug/m3)",
         main = "PM10(ug/m3)")
    
    
    if (input$individual_obs) {
      rug(tp$`PM10(ug/m3)`)
    }
    
    if (input$density) {
      dens <- density(tp$`PM10(ug/m3)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  output$p4 <- renderPlot({
    
    plot(tp$`CO(ppm)`,
         probability = TRUE,
         type = "s",
         breaks = as.numeric(input$n_breaks),
         xlab = "Duration (second)",
         main = "CO(ppm)")
    
    
    if (input$individual_obs) {
      rug(tp$`CO(ppm)`)
    }
    
    if (input$density) {
      dens <- density(tp$`CO(ppm)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  
  output$p44 <- renderPlot({
    
    hist(tp$`CO(ppm)`,
         probability = TRUE,
         breaks = as.numeric(input$n_breaks),
         xlab = "CO(ppm)",
         main = "CO(ppm)")
    
    
    if (input$individual_obs) {
      rug(tp$`CO(ppm)`)
    }
    
    if (input$density) {
      dens <- density(tp$`CO(ppm)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  
  output$p5 <- renderPlot({
    
    plot(tp$`SO2(ppb)`,
         probability = TRUE,
         type = "s",
         breaks = as.numeric(input$n_breaks),
         xlab = "Duration (second)",
         main = "SO2(ppb)")
    
    
    if (input$individual_obs) {
      rug(tp$`SO2(ppb)`)
    }
    
    if (input$density) {
      dens <- density(tp$`SO2(ppb)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
    
  output$p55 <- renderPlot({
    
    hist(tp$`SO2(ppb)`,
         probability = TRUE,
         breaks = as.numeric(input$n_breaks),
         xlab = "SO2(ppb)",
         main = "SO2(ppb)")
    
    
    if (input$individual_obs) {
      rug(tp$`SO2(ppb)`)
    }
    
    if (input$density) {
      dens <- density(tp$`SO2(ppb)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  
  output$p6 <- renderPlot({
      
      plot(tp$`NO2(ppb)`,
           probability = TRUE,
           type = "s",
           breaks = as.numeric(input$n_breaks),
           xlab = "Duration (second)",
           main = "NO2(ppb)")
      
      
      if (input$individual_obs) {
        rug(tp$`NO2(ppb)`)
      }
      
      if (input$density) {
        dens <- density(tp$`NO2(ppb)`,
                        adjust = input$bw_adjust)
        lines(dens, col = "blue")
      }
      
    })
  
  output$p66 <- renderPlot({
    
    hist(tp$`NO2(ppb)`,
         probability = TRUE,
         breaks = as.numeric(input$n_breaks),
         xlab = "NO2(ppb)",
         main = "NO2(ppb)")
    
    
    if (input$individual_obs) {
      rug(tp$`NO2(ppb)`)
    }
    
    if (input$density) {
      dens <- density(tp$`NO2(ppb)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  output$p7 <- renderPlot({
    
    plot(tp$`Temp.(degree C)`,
         probability = TRUE,
         type = "s",
         breaks = as.numeric(input$n_breaks),
         xlab = "Duration (second)",
         main = "Temp.(degree C)")
    
    
    if (input$individual_obs) {
      rug(tp$`Temp.(degree C)`)
    }
    
    if (input$density) {
      dens <- density(tp$`Temp.(degree C)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  output$p77 <- renderPlot({
    
    hist(tp$`Temp.(degree C)`,
         probability = TRUE,
         breaks = as.numeric(input$n_breaks),
         xlab = "Temp.(degree C)",
         main = "Temp.(degree C)")
    
    
    if (input$individual_obs) {
      rug(tp$`Temp.(degree C)`)
    }
    
    if (input$density) {
      dens <- density(tp$`Temp.(degree C)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    
  })
  output$p8 <- renderPlot({
    
    plot(tp$`Humidity(%)`,
         probability = TRUE,
         type = "s",
         breaks = as.numeric(input$n_breaks),
         xlab = "Duration (second)",
         main = "Humidity(%)")
    
    
    if (input$individual_obs) {
      rug(tp$`Humidity(%)`)
    }
    
    if (input$density) {
      dens <- density(tp$`Humidity(%)`,
                      adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }
    output$p88 <- renderPlot({
      
      hist(tp$`Humidity(%)`,
           probability = TRUE,
           breaks = as.numeric(input$n_breaks),
           xlab = "Humidity(%)",
           main = "Humidity(%)")
      
      
      if (input$individual_obs) {
        rug(tp$`Humidity(%)`)
      }
      
      if (input$density) {
        dens <- density(tp$`Humidity(%)`,
                        adjust = input$bw_adjust)
        lines(dens, col = "blue")
      }
      
    })
    
  })
})


library('shiny')
library('ggplot2')
library('plotly')


function(input, output) {

  
      
  output$plot <- renderPlotly({
  if(input$variable=="beta"){

    params = list(shape1 = input$p1, shape2 = input$p1)
    

    q<-ggplot(mtcars, aes(sample = mpg)) + 
      stat_qq(distribution = qbeta, dparams = params,color="royalblue2")+  
      xlab("Theoretical")+
      ylab("Sample")
    
    q
    }

    else if(input$variable=="binom"){
      
      params = list(size = input$p1, prob = input$p1)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qbinom, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q  }

    else if(input$variable=="chi"){
      
      params = list(df = input$p1)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qchisq, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }

    else if(input$variable=="cauchy"){
      

      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qcauchy,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="exp"){
      
      params = list(rate = input$p1)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qexp, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="f"){
      
      params = list(df1 = input$p1,df2 = input$p2)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qf, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="gamma"){
      
      params = list(shape = input$p1, rate= input$p2)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qgamma, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="geom"){
      
      params = list(prob = input$p1)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qgeom, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="hyper"){
      
      params = list(m=input$p1,n=input$p2,k=input$p3)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qhyper, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="log"){
      

      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qlogis,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="lognorm"){
      
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qlnorm,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="nbinom"){
      
      params = list(size = input$p1,prob = input$p2)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qnbinom, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    
    else if(input$variable=="normal"){
      
      params = list(mean = input$p1, sd= input$p2)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qnorm, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="poisson"){
      
      params = list(lambda = input$p1)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qpois, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="t"){
      
      params = list(df = input$p1,ncp = input$p2)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qt, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    else if(input$variable=="uniform"){
      

      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qunif,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
    
    
    else if(input$variable=="weibull"){
      
      params = list(shape = input$p1)
      
      
      q<-ggplot(mtcars, aes(sample = mpg)) + 
        stat_qq(distribution = qweibull, dparams = params,color="royalblue2")+  
        xlab("Theoretical")+
        ylab("Sample")
      
      
      q      
    }
        
})}

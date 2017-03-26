# GGforQQ

Rudimentary implementation of Q-Q line as a geom within GGPLOT. Performed for GSoC 2017 | Distributional assessments with Q Q plots | Test: Hard

  Takes any number of Machine Learning Models as Base Models [230+] and one Machine Learning Model as Top model [230+] to produce an ensemble of models. check vignettes for more details and examples.

                   Install from GitHub :  devtools::install_github("sauravkaushik8/GSoc-2017-QQ_Plots/GSoC 2017/Hard/GGforQQ/")


A few examples fulfilling the desired task of the test:

Drawing the QQ plot for a T distribution for miles per gallon (mpg) variable of mtcars dataset:


                                                         library('ggplot2')
                                                        library('GGforQQ')
                                                        
                                             ggplot(data = mtcars, mapping = aes(sample = mpg)) +
                                       geom_qq(distribution = stats::qt, dparams = list(df = 2,ncp=3)) +
                                         geom_ggqqline(distribution = qt, dparams = list(df = 2,ncp=3))
                                         

![image](https://3.bp.blogspot.com/-oVJ6qsDdRyY/WNf08qXH1BI/AAAAAAAAEnM/sOKJf42aGgYZnR0KWMZI4op_W2NQNzlLgCLcB/s1600/1.png)


Simmilarly, drawing the QQ plot for a Hypergeometric distribution for miles per gallon (mpg) variable of mtcars dataset:


                                            ggplot(data = mtcars, mapping = aes(sample = mpg)) +
                                         geom_qq(distribution = stats::qhyper, dparams = list(m=10,n=1,k=3)) +
                                          geom_ggqqline(distribution = qhyper, dparams = list(m=10,n=1,k=3))
                                          
![image](https://4.bp.blogspot.com/-2sSmefONmn8/WNf08hORoEI/AAAAAAAAEnI/qJfUfVAdDZUahZ2hr8PlaGm7Tro33O5QgCLcB/s1600/2.png)

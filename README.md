# Quilt Poems

Quilt Poems feature visual poems in the layout of various quilt patterns (log cabin, crazy quilt, etc) for placement of the words in pattern.

Quilt layouts are in the quilt.lua file.

The book and other text output content is CC BY 4.0 Deed. The code is unlicensed / public domain.

Created on occasion of NaNoGenMo 2024. I have continued to work on this project including an updated algorithm that minimizes each of the 8 column widths separately, and a separate [quilt photo grids](https://tildegit.org/exquisitecorp/quilt-photo-grids) project, a [daily quilt poems site](https://leetusman.com/everyday/293/) and a zine chapbook. A separate [repo](https://github.com/lee2sman/quilt-pattern-data) also tracks the latest quilt pattern data.

## NanoGenMo period

[Example text output](https://github.com/lee2sman/generative-quilt-poems/blob/main/dev/bw-quilts-output-test3.txt)

[Example book output](https://github.com/lee2sman/generative-quilt-poems/blob/main/dev/bw-quilts-output-test2.pdf) (with manually added cover pages and code printout included)

[Devlog](https://github.com/NaNoGenMo/2024/issues/22)

## Examples of latest algorithm

```
Invite Detail Bullseye Quilt 

speedily  invite   invite   detail   detail   invite   invite    fast   
 invite  speedily  invite   detail   detail   invite    fast    invite  
 invite   invite  speedily  detail   detail    fast    invite   invite  
  bomb     bomb     bomb   speedily   fast     bomb     bomb     bomb   
  bomb     bomb     bomb     fast   speedily   bomb     bomb     bomb   
 invite   invite    fast    detail   detail  speedily  invite   invite  
 invite    fast    invite   detail   detail   invite  speedily  invite  
  fast    invite   invite   detail   detail   invite   invite  speedily 

Educate Dramatic Amish Bars Quilt 

educate  educate  educate  educate  educate  educate  educate educate 
educate dramatic approach dramatic approach dramatic approach educate 
educate dramatic approach dramatic approach dramatic approach educate 
educate dramatic approach dramatic approach dramatic approach educate 
educate dramatic approach dramatic approach dramatic approach educate 
educate dramatic approach dramatic approach dramatic approach educate 
educate dramatic approach dramatic approach dramatic approach educate 
educate  educate  educate  educate  educate  educate  educate educate 

Ear Operate Log Cabin Variation Quilt 

ear   operate  ear unreliable ear   operate  ear unreliable 
ear     ear    ear     ear    ear     ear    ear     ear    
ear unreliable ear   operate  ear unreliable ear   operate  
ear     ear    ear     ear    ear     ear    ear     ear    
ear   operate  ear unreliable ear   operate  ear unreliable 
ear     ear    ear     ear    ear     ear    ear     ear    
ear unreliable ear   operate  ear unreliable ear   operate  
ear     ear    ear     ear    ear     ear    ear     ear    

Far Scold Little Coins Quilt 

far         far        far  far   far  far   far far 
far        scold       far  far   far bread  far far 
far         far        far  far   far  far   far far 
far         far        far trail  far  far   far far 
far         far        far  far   far  far   far far 
far anatomical theatre far  far   far  far  nose far 
far         far        far  far  ruin  far   far far 
far         far        far  far   far  far   far far 
```

## Original NaNoGenMo output

```
Orange Idiot Bullseye Quilt 

determinist    orange      orange      idiot       idiot       orange      orange      sharp    
   orange   determinist    orange      idiot       idiot       orange      sharp       orange   
   orange      orange   determinist    idiot       idiot       sharp       orange      orange   
   somber      somber      somber   determinist    sharp       somber      somber      somber   
   somber      somber      somber      sharp    determinist    somber      somber      somber   
   orange      orange      sharp       idiot       idiot    determinist    orange      orange   
   orange      sharp       orange      idiot       idiot       orange   determinist    orange   
   sharp       orange      orange      idiot       idiot       orange      orange   determinist 
   
Phallus Laughter Log Cabin Quilt 

 phallus laughter    saw   suppress  phallus laughter    saw   suppress 
 phallus laughter laughter suppress  phallus laughter laughter suppress 
 phallus  phallus  phallus suppress  phallus  phallus  phallus suppress 
suppress suppress suppress suppress suppress suppress suppress suppress 
 phallus laughter    saw   suppress  phallus laughter    saw   suppress 
 phallus laughter laughter suppress  phallus laughter laughter suppress 
 phallus  phallus  phallus suppress  phallus  phallus  phallus suppress 
suppress suppress suppress suppress suppress suppress suppress suppress 

Mesmerizer Soothsayer Cross Bars Quilt 

mesmerizer mesmerizer mesmerizer soothsayer soothsayer mesmerizer mesmerizer mesmerizer 
mesmerizer mesmerizer mesmerizer soothsayer soothsayer mesmerizer mesmerizer mesmerizer 
mesmerizer mesmerizer mesmerizer soothsayer soothsayer mesmerizer mesmerizer mesmerizer 
soothsayer soothsayer soothsayer soothsayer soothsayer soothsayer soothsayer soothsayer 
soothsayer soothsayer soothsayer soothsayer soothsayer soothsayer soothsayer soothsayer 
mesmerizer mesmerizer mesmerizer soothsayer soothsayer mesmerizer mesmerizer mesmerizer 
mesmerizer mesmerizer mesmerizer soothsayer soothsayer mesmerizer mesmerizer mesmerizer 
mesmerizer mesmerizer mesmerizer soothsayer soothsayer mesmerizer mesmerizer mesmerizer 

Explain Worthless Amish Bars Quilt 

  explain    explain    explain    explain    explain    explain    explain    explain  
  explain   worthless   fiddler   worthless   fiddler   worthless   fiddler    explain  
  explain   worthless   fiddler   worthless   fiddler   worthless   fiddler    explain  
  explain   worthless   fiddler   worthless   fiddler   worthless   fiddler    explain  
  explain   worthless   fiddler   worthless   fiddler   worthless   fiddler    explain  
  explain   worthless   fiddler   worthless   fiddler   worthless   fiddler    explain  
  explain   worthless   fiddler   worthless   fiddler   worthless   fiddler    explain  
  explain    explain    explain    explain    explain    explain    explain    explain  

Wait Die Cross Bars Variation Quilt 

   wait       wait       wait        die        die       wait       wait       wait    
   wait       wait       wait        die        die       wait       wait       wait    
   wait       wait       wait        die        die       wait       wait       wait    
  kissing    kissing    kissing      die        die      kissing    kissing    kissing  
  kissing    kissing    kissing      die        die      kissing    kissing    kissing  
   wait       wait       wait        die        die       wait       wait       wait    
   wait       wait       wait        die        die       wait       wait       wait    
   wait       wait       wait        die        die       wait       wait       wait   
```

### Libraries

Corpora cc0 Darius Kazemi and Contributors

Color.lua (c) 2012 Ross Andrews

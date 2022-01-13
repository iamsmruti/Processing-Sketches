class game {
  /// 0 for Mario and 1 for Luigi
     int character = 0;
     
  /// 0 for small && 1 for big && 2 for shooting fire && 3 for sparklingSmall && 4 for sparklingBig 
      int state = 1;
     
  /// 0 - right side and 1 - left side 
    int side = 0;
    
  /// 0 for standing  && 1 for Running && 2 for jumping && 3 for sitting  
    int marioState = 0;
    
  /// 0 for mushroom and 1 for the flower
    int fruit = 0;
    
  /// sparkling Thing when it eats a star
    boolean sparkle = false;
    
    int marioRunState = 0;
    PVector posMario = new PVector(100,465);
    PVector posTile = new PVector(0,0) ;
    int vel = 15;
  
  void startGame() {
    image(startPage, 0, 0, width, height);

    if (mousePressed && gameState ==0) {
      gameState =1;
    }
  }

  

  void test1_1() {
    image(world1_1,posTile.x,posTile.y,9200,600);
  }
  void world1_1(){
      background(#6B8CFF);
      for(int i = 0; i< 78; i++){
          image(brownTile,posTile.x + i*40,540,40,40);
          image(brownTile,posTile.x + i*40,580,40,40);
      }
  
  }
  
  void controls(){
    if(keyPressed){
        if( key == 'd'){
             side = 0;
             marioState = 1;
             posMario.x +=vel;
             
               if(posMario.x > width/2){
                   posMario.x = width/2;
                   posTile.x -= vel;
               } else if(posTile.x < -9200){
                   posTile.x = posTile.x;
               }
             
        }else if(key == 's'){
            marioState = 3;
        }else if( key =='a' && posMario.x > 0){
            side = 1;
            marioState = 1;
            posMario.x -= vel;
        } else if( key == CODED && keyCode == RIGHT){
             marioState = 2;
            posMario.y -= 20;
        }
    } else {
      marioState = 0;
      if( posMario.y < 445){
        posMario.y += 25;
      }
      
      
    }
    
    
    
}
    void character(){
          if(character == 0){
              if( state == 0){
                  if( side == 0){
                         if( marioState == 0){
                             mario = loadImage("marioSmallStanding.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("marioSmallRunning1.png");
                            }else if( marioRunState ==1 ){
                                mario = loadImage("marioSmallRunning2.png");
                            } else if( marioRunState ==2){
                                mario = loadImage("marioSmallRunning3.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("marioSmallJump.png");
                         }
                     } else if (side ==1){
                         if( marioState == 0){
                             mario = loadImage("marioSmallStandingLeft.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("marioSmallRunning1Left.png");
                            }else if( marioRunState ==1 ){
                                mario = loadImage("marioSmallRunning2Left.png");
                            } else if( marioRunState ==2){
                                mario = loadImage("marioSmallRunning3Left.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("marioSmallJumpLeft.png");
                         }
                    }
                    image(mario,posMario.x,posMario.y + 40,40,40);
                  
              } else if(state ==1){
                      if( side == 0){
                         if( marioState == 0){
                             mario = loadImage("marioBigStanding.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("marioBigRun1.png");
                            }else if( marioRunState ==1 ){
                                mario = loadImage("marioBigRun2.png");
                            } else if( marioRunState ==2){
                                mario = loadImage("marioBigRun3.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("marioBigJump.png");
                         } else if(marioState == 3){
                             mario = loadImage("marioBigSit.png");
                         }
                     } else if (side ==1){
                         if( marioState == 0){
                             mario = loadImage("marioBigStandingLeft.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("marioBigRun1Left.png");
                            }else if( marioRunState ==1 ){
                                mario = loadImage("marioBigRun2Left.png");
                            } else if( marioRunState ==2){
                                mario = loadImage("marioBigRun3Left.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("marioBigJumpLeft.png");
                         } else if(marioState == 3){
                             mario = loadImage("marioBigSitLeft.png");
                         }
                    }
                  image(mario,posMario.x,posMario.y,50,80);
              
              }else if( state == 2){
                    if( side == 0){
                         if( marioState == 0){
                             mario = loadImage("marioFireStanding.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("marioFireRunning1.png");
                            }else if( marioRunState ==1 ){
                                mario = loadImage("marioFireRunning2.png");
                            } else if( marioRunState ==2){
                                mario = loadImage("marioFireRunning3.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("marioFireJump.png");
                         } else if(marioState == 3){
                             mario = loadImage("marioFireSit.png");
                         }
                     } else if (side ==1){
                         if( marioState == 0){
                             mario = loadImage("marioFireStandingLeft.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("marioFireRunning1Left.png");
                            }else if( marioRunState ==1 ){
                                mario = loadImage("marioFireRunning2Left.png");
                            } else if( marioRunState ==2){
                                mario = loadImage("marioFireRunning3Left.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("marioFireJumpLeft.png");
                         } else if(marioState == 3){
                             mario = loadImage("marioFireSitLeft.png");
                         }
                    }
                  image(mario,posMario.x,posMario.y,50,80);
              }
          } else if(character == 1){
               if( state == 0){
                       if( state == 0){
                        if( side == 0){
                               if( marioState == 0){
                                   mario = loadImage("luigiSmallStanding.png");
                               } else if(marioState == 1){
                                   marioRunState ++;
                                   marioRunState %= 3;
                                   
                                  if(marioRunState == 0){
                                      mario = loadImage("luigiSmallRunning1.png");
                                  }else if( marioRunState ==1 ){
                                      mario = loadImage("luigiSmallRunning2.png");
                                  } else if( marioRunState ==2){
                                      mario = loadImage("luigiSmallRunning3.png");
                                  }
                               } else if( marioState == 2){
                                   mario = loadImage("luigiSmallJump.png");
                               }
                           } else if (side ==1){
                               if( marioState == 0){
                                   mario = loadImage("luigiSmallStandingLeft.png");
                               } else if(marioState == 1){
                                   marioRunState ++;
                                   marioRunState %= 3;
                                   
                                  if(marioRunState == 0){
                                      mario = loadImage("luigiSmallRunning1Left.png");
                                  }else if( marioRunState ==1 ){
                                      mario = loadImage("luigiSmallRunning2Left.png");
                                  } else if( marioRunState ==2){
                                      mario = loadImage("luigiSmallRunning3Left.png");
                                  }
                               } else if( marioState == 2){
                                   mario = loadImage("luigiSmallJumpLeft.png");
                               }
                          }
                    image(mario,posMario.x,posMario.y + 40,40,40);
                       }
                  
              }else if(state ==1){
                    if( side == 0){
                         if( marioState == 0){
                             mario = loadImage("luigiBigStanding.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("luigiBigRunning1.png");
                            }else if( marioRunState ==1 ){
                                mario = loadImage("luigiBigRunning2.png");
                            } else if( marioRunState ==2){
                                mario = loadImage("luigiBigRunning3.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("luigiBigJump.png");
                         } else if(marioState == 3){
                             mario = loadImage("luigiBigSitting.png");
                         }
                     } else if (side ==1){
                         if( marioState == 0){
                             mario = loadImage("luigiBigStandingLeft.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("luigiBigRunning1Left.png");
                            }else if( marioRunState ==1 ){

                            } else if( marioRunState ==2){
                                mario = loadImage("luigiBigRunning3Left.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("luigiBigJumpLeft.png");
                         } else if(marioState == 3){
                             mario = loadImage("luigiBigSittingLeft.png");
                         }
                    }
                  image(mario,posMario.x,posMario.y,50,80);
                      
              }else if( state == 2){
                      if( side == 0){
                         if( marioState == 0){
                             mario = loadImage("marioFireStanding.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("marioFireRunning1.png");
                            }else if( marioRunState ==1 ){
                                mario = loadImage("marioFireRunning2.png");
                            } else if( marioRunState ==2){
                                mario = loadImage("marioFireRunning3.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("marioFireJump.png");
                         } else if(marioState == 3){
                             mario = loadImage("marioFireSit.png");
                         }
                     } else if (side ==1){
                         if( marioState == 0){
                             mario = loadImage("marioFireStandingLeft.png");
                         } else if(marioState == 1){
                             marioRunState ++;
                             marioRunState %= 3;
                             
                            if(marioRunState == 0){
                                mario = loadImage("marioFireRunning1Left.png");
                            }else if( marioRunState ==1 ){
                                mario = loadImage("marioFireRunning2Left.png");
                            } else if( marioRunState ==2){
                                mario = loadImage("marioFireRunning3Left.png");
                            }
                         } else if( marioState == 2){
                             mario = loadImage("marioFireJumpLeft.png");
                         } else if(marioState == 3){
                             mario = loadImage("marioFireSitLeft.png");
                         }
                    }
                  image(mario,posMario.x,posMario.y,50,80);
              
              }else if( state == 3){
              
              
              }
          
          }
        
    }
    
    void debug(){
        text(mouseX,mouseX,mouseY);
        text(mouseY,mouseX,mouseY+30);
    }
    
    void fruitBox(int x,int y){
      
           marioRunState ++;
           marioRunState %= 3;
           
          if(marioRunState == 0){
              magicTile = loadImage("magicTile1.png");
          }else if( marioRunState ==1 ){
              magicTile = loadImage("magicTile2.png");
          } else if( marioRunState ==2){
              magicTile = loadImage("magicTile3.png");
          }
          
          image(magicTile,x,y,40,40);
    }
    
    void gameLogic(){
        
    
    }
    
    void enemies(){}

}

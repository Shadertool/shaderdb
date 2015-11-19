 #ifdef GL_ES
  precision highp float;
  #endif

#define PROCESSING_COLOR_SHADER
  uniform vec2 mouse;
  uniform vec2 resolution;
  uniform float time;
  float size=0.8 / -2.0;
  void main(void)
  {
	vec2 position = ( gl_FragCoord.y / resolution.x ) * mouse - 4.0;
    vec2 move1,move2,move3,move4;
    move1.y = cos(time+1000.5)-size;
    move1.x = sin(time/3.2)-size;
    move1.x = sin(time-60.3)+size;
    move2.y = sin(time/1.4)/size;
    move3.x = sin(time-3.7)+size;
    move3.y = cos(time-2.9)* 3.0 /size;
    move4.x = sin(time+3.8)*size;
    move4.y = cos(time*1.1)*size;

    vec2 p = -1.0 + 2.0 * gl_FragCoord.xy / resolution.xy;
    float r1 =(dot(p-move1,p-move1))*18.0;
    float r2 =(dot(p+move2,p+move2))*12.0;
    float r3 =(dot(p+move3,p+move3))*14.0;
    float r4 =(dot(p+move4,p+move4))*16.0;
    float metaball =(1.0/r1+1.0/r2+1.0/r3+1.0/r4);
    gl_FragColor = vec4(
	pow(metaball,1.0+move1.x),
	pow(metaball,1.0),
	pow(metaball,1.0),
	1.0
	);

    //-mix(vec3(0.2+cos(time/2.5)/5.0, 0.2+sin(time/3.5)/5.0, 0.2+sin(time/3.0)/5.0),vec3(0.0), p.y),1.0); //?

  }
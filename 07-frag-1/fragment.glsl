precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)
#define OUTSIDE_COLOR   vec4(0.3804, 0.7647, 1.0, 1.0)
#define CIRCLE_CENTER   vec2(256.5, 256.5)

void main() {

  //TODO: Replace this with a function that draws a circle at (256.5,256.5) with radius 128
  float radius = length(gl_FragCoord.xy - CIRCLE_CENTER);
  if(radius < 128.0) {
    gl_FragColor = CIRCLE_COLOR;
  } else {
    gl_FragColor = OUTSIDE_COLOR;
  }

}
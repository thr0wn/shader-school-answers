precision highp float;

uniform sampler2D texture;
uniform vec2 screenSize;

void main() {
  vec2 coord = gl_FragCoord.xy / screenSize;

  //TODO: Swap red and blue color channels of image
  vec4 textureColor = texture2D(texture, coord);
  gl_FragColor = textureColor.bgra;
}

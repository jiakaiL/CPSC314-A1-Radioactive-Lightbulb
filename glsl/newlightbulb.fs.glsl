varying vec3 interpolatedNormal1;
varying vec3 directionV1;
varying float distanceLA1;




void main() {
	// Set constant color
  float angle1 = dot(interpolatedNormal1,directionV1);

  
  if (distanceLA1 < 3.0){
    gl_FragColor = vec4(0.0,angle1,0.0,1.0); }
  else{
    gl_FragColor = vec4(angle1,angle1,angle1, 1.0);
  }

}
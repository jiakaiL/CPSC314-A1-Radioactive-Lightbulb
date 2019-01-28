// Create shared variable. The value is given as the interpolation between normals computed in the vertex shader
varying vec3 interpolatedNormal;
varying vec3 directionV;
varying float distanceLA;

/* HINT: YOU WILL NEED MORE SHARED/UNIFORM VARIABLES TO COLOR ACCORDING TO COS(ANGLE) */

void main() {
  // Set final rendered color according to the surface normal
  float angle = dot(interpolatedNormal,directionV);

  
  if (distanceLA < 2.5){
    gl_FragColor = vec4(0.0,angle,0.0,1.0); }
  else{
    gl_FragColor = vec4(angle,angle,angle, 1.0);
  }
}
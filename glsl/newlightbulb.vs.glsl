// The uniform variable is set up in the javascript code and the same for all vertices
varying vec3 interpolatedNormal1;
varying vec3 directionV1;
uniform vec3 lightPosition;
varying float distanceLA1;
uniform vec3 newlightPosition;


void main() {
	/* HINT: WORK WITH lightPosition HERE! */
    interpolatedNormal1 = normal;
    directionV1 = normalize(lightPosition-position-newlightPosition);
    distanceLA1 = distance(lightPosition,position+newlightPosition);
    // Multiply each vertex by the model-view matrix and the projection matrix to get final vertex position
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position+newlightPosition, 1.0);
}

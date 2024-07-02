#version 110

uniform sampler2D DiffuseSampler;

uniform vec4 ColorModulate;

varying vec2 texCoord;

void main(){
    vec2 uv = texCoord;
    uv -= .5; uv *= .1; uv.y += .5;
    float bottom_width = 2.;
    float top_width = 1.5; 
    uv.x /= mix(bottom_width, top_width, uv.y);
    uv.x += .5; 
    vec3 col = texture2D(DiffuseSampler, clamp(uv, vec2(0), vec2(1))).rgb;
    gl_FragColor = vec4(col,1.0);
}

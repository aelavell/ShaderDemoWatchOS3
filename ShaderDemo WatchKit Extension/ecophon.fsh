// http://www.pouet.net/prod.php?which=57245
// https://www.shadertoy.com/view/XsXXDn

#define t u_time
#define r vec2(272., 320.)
#define r2 vec2(312., 390.)

void main(void){
    vec3 c;
    float l, w, z = t;
    for(int i = 0; i < 3; i++) {
        //vec2 uv, p = gl_FragCoord.xy / size.xy;
        vec2 uv, p = v_tex_coord;
        uv = p;
        p -= .5;
        p.x *= r.x / r.y;
        p.y *= 0.05;
        z *= 0.5;
        l = length(p);
        w = sin(t * 0.5) * 0.5;
        uv -= p / l * (sin(z)) * abs(sin(l * 1000. + sin(w) - z * 2.));
        c[i] = .005 / length(abs(mod(uv, 1.) - 0.5));
    }
    gl_FragColor = vec4(c/l,t);
}

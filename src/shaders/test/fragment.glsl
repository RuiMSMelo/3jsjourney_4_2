varying vec2 vUv;

void main()
{
    // pattern 6
    // float strength = vUv.y * 10.0;
    // pattern 7
    // float strength = mod(vUv.y * 10.0, 1.0);
    // pattern 8
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.5, strength);
    // pattern 9
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.75, strength);
    // pattern 10
    // float strength = mod(vUv.x * 10.0, 1.0);
    // strength = step(0.75, strength);
    // pattern 11
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength += step(0.8, mod(vUv.y * 10.0, 1.0));
    // pattern 12
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));
    // pattern 13
    // float strength = step(0.4, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));
    // pattern 14
    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0, 1.0));
    // float barY = step(0.8, mod(vUv.x * 10.0, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));
    // pattern 15
    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0));
    // float barY = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));
    // float strength = barX + barY;

    // pattern 16
    // float strength = abs(vUv.x - 0.5);
    // pattern 17
    // float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    // pattern 18
    float strength = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5));


    gl_FragColor = vec4(strength, strength, strength, 1.0);
}
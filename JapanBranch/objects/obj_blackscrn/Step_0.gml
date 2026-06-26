if (fading_in) {
    alpha -= speed_rate;
    if (alpha <= 0) { alpha = 0; instance_destroy(); }
} else {
    alpha += speed_rate;
    if (alpha >= 1) { alpha = 1; }
}

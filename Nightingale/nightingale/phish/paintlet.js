// 100 % CSS, no JS strings in DOM
class BlurPaint {
  static get inputProperties() { return ['--bg']; }
  paint(ctx, geom) {
    ctx.filter = 'blur(4px)';
    ctx.fillStyle = '#f3f2f1';
    ctx.fillRect(0, 0, geom.width, geom.height);
  }
}
registerPaint('blur-bg', BlurPaint); 
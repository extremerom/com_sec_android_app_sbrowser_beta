.class Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

.field final synthetic val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-static {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->a(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-static {p2, p1, p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->e(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-static {p2, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->f(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F

    move-result p2

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    iget-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    iget-object v4, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-static {v3, p1, v4}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->g(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    const v5, 0x3f4ccccd    # 0.8f

    if-gtz v4, :cond_1

    div-float v4, p1, v3

    sub-float v6, v5, p2

    invoke-static {}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->h()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v1

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v4}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    :cond_1
    cmpl-float v1, p1, v3

    if-lez v1, :cond_2

    sub-float/2addr v5, p2

    sub-float p2, p1, v3

    div-float/2addr p2, v3

    invoke-static {}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->h()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr p2, v5

    add-float/2addr p2, v0

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p2, p1

    add-float/2addr p2, v2

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    const/high16 p2, 0x43580000    # 216.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-static {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->b(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)F

    move-result p2

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x44870000    # 1080.0f

    mul-float/2addr p2, v0

    add-float/2addr p2, p1

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p0, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setRotation(F)V

    :goto_0
    return-void
.end method

.class Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

.field final synthetic val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->storeOriginals()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->goToNextColor()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->a(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->c(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)V

    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->val$ring:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-static {p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->b(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    rem-float/2addr p1, v0

    invoke-static {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->d(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;F)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$2;->this$0:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->d(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;F)V

    return-void
.end method

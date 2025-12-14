.class Lorg/chromium/ui/base/WindowAndroid$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/base/WindowAndroid;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->d(Lorg/chromium/ui/base/WindowAndroid;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {p1}, Lorg/chromium/ui/base/WindowAndroid;->d(Lorg/chromium/ui/base/WindowAndroid;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {p0}, Lorg/chromium/ui/base/WindowAndroid;->c(Lorg/chromium/ui/base/WindowAndroid;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_0
    return-void
.end method

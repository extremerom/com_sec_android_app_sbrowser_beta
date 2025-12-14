.class Lorg/chromium/ui/drawable/AnimationLooper$1;
.super LZ2/c;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/drawable/AnimationLooper;


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Lorg/chromium/ui/drawable/AnimationLooper$1;->this$0:Lorg/chromium/ui/drawable/AnimationLooper;

    invoke-static {p1}, Lorg/chromium/ui/drawable/AnimationLooper;->b(Lorg/chromium/ui/drawable/AnimationLooper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/ui/drawable/AnimationLooper$1;->this$0:Lorg/chromium/ui/drawable/AnimationLooper;

    invoke-static {p0}, Lorg/chromium/ui/drawable/AnimationLooper;->a(Lorg/chromium/ui/drawable/AnimationLooper;)Landroid/graphics/drawable/Animatable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

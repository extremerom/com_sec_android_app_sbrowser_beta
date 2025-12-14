.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->f(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->d(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->d(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->start()V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->c(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->b(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->b(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->reset()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->a(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->k(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

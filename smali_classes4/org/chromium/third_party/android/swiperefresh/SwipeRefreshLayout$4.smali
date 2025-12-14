.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->release(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->g(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->e(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->o(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
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

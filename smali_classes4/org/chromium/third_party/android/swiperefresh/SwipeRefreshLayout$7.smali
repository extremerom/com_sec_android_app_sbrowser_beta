.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->i(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F

    move-result p2

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->i(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F

    move-result v0

    neg-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p2, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->m(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->l(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V

    return-void
.end method

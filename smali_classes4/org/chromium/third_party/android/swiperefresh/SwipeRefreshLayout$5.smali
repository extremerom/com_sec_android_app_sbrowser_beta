.class Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;
.super Landroid/view/animation/Animation;
.source "SourceFile"


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
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->j(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->h(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F

    move-result p2

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    iget v0, v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    :goto_0
    float-to-int p2, p2

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->h(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F

    move-result p2

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    iget v1, v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    add-int/2addr v1, p2

    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->a(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr v1, p2

    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p2, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->n(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;I)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;->this$0:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-static {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->d(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    move-result-object p0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setArrowScale(F)V

    return-void
.end method

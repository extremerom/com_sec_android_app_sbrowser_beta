.class public Lorg/chromium/components/paintpreview/player/PlayerSwipeRefreshHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/paintpreview/player/OverscrollHandler;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;


# virtual methods
.method public pull(F)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/PlayerSwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->pull(F)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/PlayerSwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->release(Z)V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/PlayerSwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->reset()V

    return-void
.end method

.method public start()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/PlayerSwipeRefreshHandler;->mSwipeRefreshLayout:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->start()Z

    move-result p0

    return p0
.end method

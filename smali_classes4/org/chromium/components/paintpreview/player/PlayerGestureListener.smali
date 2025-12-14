.class public Lorg/chromium/components/paintpreview/player/PlayerGestureListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mLinkClickHandler:Lorg/chromium/components/paintpreview/player/LinkClickHandler;

.field private mUserFrustrationDetector:Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;


# virtual methods
.method public onLongPress()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/PlayerGestureListener;->mUserFrustrationDetector:Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->recordUnconsumedLongPress()V

    :cond_0
    invoke-static {}, Lorg/chromium/components/paintpreview/player/PlayerUserActionRecorder;->recordLongPress()V

    return-void
.end method

.method public onTap(Lorg/chromium/url/GURL;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/PlayerGestureListener;->mLinkClickHandler:Lorg/chromium/components/paintpreview/player/LinkClickHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/chromium/components/paintpreview/player/LinkClickHandler;->onLinkClicked(Lorg/chromium/url/GURL;)V

    invoke-static {}, Lorg/chromium/components/paintpreview/player/PlayerUserActionRecorder;->recordLinkClick()V

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/PlayerGestureListener;->mUserFrustrationDetector:Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/PlayerUserFrustrationDetector;->recordUnconsumedTap()V

    :cond_1
    invoke-static {}, Lorg/chromium/components/paintpreview/player/PlayerUserActionRecorder;->recordUnconsumedTap()V

    return-void
.end method

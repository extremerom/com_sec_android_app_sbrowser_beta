.class public interface abstract Lorg/chromium/components/content_settings/CookieControlsObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public onHighlightCookieControl(Z)V
    .locals 0

    return-void
.end method

.method public onHighlightPwaCookieControl()V
    .locals 0

    return-void
.end method

.method public onStatusChanged(ZZIIJ)V
    .locals 0

    return-void
.end method

.method public onTrackingProtectionStatusChanged(ZZJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ",
            "Ljava/util/List<",
            "Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

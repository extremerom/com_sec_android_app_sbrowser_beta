.class public Lorg/chromium/components/content_settings/CookieControlsBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/content_settings/CookieControlsBridge$Natives;,
        Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mObserver:Lorg/chromium/components/content_settings/CookieControlsObserver;


# direct methods
.method private static createTpFeatureAndAddToList(Ljava/util/List;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;",
            ">;III)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;-><init>(III)V

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static createTpFeatureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private onHighlightCookieControl(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/content_settings/CookieControlsBridge;->mObserver:Lorg/chromium/components/content_settings/CookieControlsObserver;

    invoke-interface {p0, p1}, Lorg/chromium/components/content_settings/CookieControlsObserver;->onHighlightCookieControl(Z)V

    return-void
.end method

.method private onHighlightPwaCookieControl()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/content_settings/CookieControlsBridge;->mObserver:Lorg/chromium/components/content_settings/CookieControlsObserver;

    invoke-interface {p0}, Lorg/chromium/components/content_settings/CookieControlsObserver;->onHighlightPwaCookieControl()V

    return-void
.end method

.method private onStatusChanged(ZZIIJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIIJ",
            "Ljava/util/List<",
            "Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/content_settings/CookieControlsBridge;->mObserver:Lorg/chromium/components/content_settings/CookieControlsObserver;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/chromium/components/content_settings/CookieControlsObserver;->onStatusChanged(ZZIIJ)V

    iget-object v1, p0, Lorg/chromium/components/content_settings/CookieControlsBridge;->mObserver:Lorg/chromium/components/content_settings/CookieControlsObserver;

    move v2, p1

    move v3, p2

    move-wide v4, p5

    move-object v6, p7

    invoke-interface/range {v1 .. v6}, Lorg/chromium/components/content_settings/CookieControlsObserver;->onTrackingProtectionStatusChanged(ZZJLjava/util/List;)V

    return-void
.end method

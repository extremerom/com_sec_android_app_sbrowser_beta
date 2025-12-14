.class public Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/content_settings/CookieControlsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackingProtectionFeature"
.end annotation


# instance fields
.field public enforcement:I

.field public featureType:I

.field public status:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;->featureType:I

    iput p2, p0, Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;->enforcement:I

    iput p3, p0, Lorg/chromium/components/content_settings/CookieControlsBridge$TrackingProtectionFeature;->status:I

    return-void
.end method

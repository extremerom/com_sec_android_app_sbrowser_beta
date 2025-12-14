.class public Lorg/chromium/ui/util/XrUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sInstance:Lorg/chromium/ui/util/XrUtils;

.field private static sXrDeviceOverrideForTesting:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/ui/util/XrUtils;

    invoke-direct {v0}, Lorg/chromium/ui/util/XrUtils;-><init>()V

    sput-object v0, Lorg/chromium/ui/util/XrUtils;->sInstance:Lorg/chromium/ui/util/XrUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isXrDevice()Z
    .locals 1

    sget-object v0, Lorg/chromium/ui/util/XrUtils;->sXrDeviceOverrideForTesting:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_0
    const-string v0, "android.software.xr.immersive"

    invoke-static {v0}, Lorg/chromium/base/PackageManagerUtils;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.software.xr.api.openxr"

    invoke-static {v0}, Lorg/chromium/base/PackageManagerUtils;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

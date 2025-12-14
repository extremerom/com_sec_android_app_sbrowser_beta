.class Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroidJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroidJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroidJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public updateDisplayFeature(JZIIII)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->Mofrwmrg(JZIIII)V

    return-void
.end method

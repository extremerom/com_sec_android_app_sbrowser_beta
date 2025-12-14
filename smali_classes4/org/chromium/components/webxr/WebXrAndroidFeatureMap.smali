.class public final Lorg/chromium/components/webxr/WebXrAndroidFeatureMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webxr/WebXrAndroidFeatureMap$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static isOpenXrEnabled()Z
    .locals 1

    invoke-static {}, Lorg/chromium/components/webxr/WebXrAndroidFeatureMapJni;->get()Lorg/chromium/components/webxr/WebXrAndroidFeatureMap$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/components/webxr/WebXrAndroidFeatureMap$Natives;->isOpenXrEnabled()Z

    move-result v0

    return v0
.end method

.class public Lorg/chromium/base/FeatureList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/FeatureList$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sDisableNativeForTesting:Z


# direct methods
.method public static getDisableNativeForTesting()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/base/FeatureList;->sDisableNativeForTesting:Z

    return v0
.end method

.method public static isNativeInitialized()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/FeatureListJni;->get()Lorg/chromium/base/FeatureList$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/FeatureList$Natives;->isInitialized()Z

    move-result v0

    return v0
.end method

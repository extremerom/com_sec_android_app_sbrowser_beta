.class public Lorg/chromium/base/version_info/VersionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static getProductVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "136.0.7103.127"

    return-object v0
.end method

.method public static isBetaBuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isCanaryBuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDevBuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isLocalBuild()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isStableBuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

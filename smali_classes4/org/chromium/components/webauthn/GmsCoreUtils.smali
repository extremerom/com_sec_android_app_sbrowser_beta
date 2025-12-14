.class public Lorg/chromium/components/webauthn/GmsCoreUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final GMSCORE_MIN_VERSION:I = 0x101b890

.field static final GMSCORE_MIN_VERSION_DYNAMIC_LOOKUP:I = 0x1110e58

.field private static sGmsCorePackageVersion:I


# direct methods
.method public static getGmsCoreVersion()I
    .locals 1

    sget v0, Lorg/chromium/components/webauthn/GmsCoreUtils;->sGmsCorePackageVersion:I

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lorg/chromium/base/PackageUtils;->getPackageVersion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/chromium/components/webauthn/GmsCoreUtils;->sGmsCorePackageVersion:I

    :cond_0
    sget v0, Lorg/chromium/components/webauthn/GmsCoreUtils;->sGmsCorePackageVersion:I

    return v0
.end method

.method public static isGetMatchingCredentialIdsSupported()Z
    .locals 2

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->getGmsCoreVersion()I

    move-result v0

    const v1, 0xd4f49a0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHybridClientApiSupported()Z
    .locals 2

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->getGmsCoreVersion()I

    move-result v0

    const v1, 0xdc7ec70

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isResultReceiverSupported()Z
    .locals 2

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->getGmsCoreVersion()I

    move-result v0

    const v1, 0xe58ca60

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWebauthnSupported()Z
    .locals 2

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->getGmsCoreVersion()I

    move-result v0

    const v1, 0x101b890

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

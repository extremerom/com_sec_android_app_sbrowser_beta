.class public final Lorg/chromium/gms/ChromiumPlayServicesAvailability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final GMS_VERSION_NUMBER:I = 0x1378218


# direct methods
.method public static getGooglePlayServicesConnectionResult(Landroid/content/Context;)I
    .locals 2

    sget-object v0, La5/b;->d:La5/b;

    const v1, 0x1378218

    invoke-virtual {v0, v1, p0}, La5/c;->b(ILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, La5/b;->d:La5/b;

    const v1, 0x1378218

    invoke-virtual {v0, v1, p0}, La5/c;->b(ILandroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.class public Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/CommunicationDeviceSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceHelpers"
.end annotation


# static fields
.field public static final DEVICE_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "Bluetooth headset"

    const-string v1, "USB audio"

    const-string v2, "Speakerphone"

    const-string v3, "Wired headset"

    const-string v4, "Headset earpiece"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->DEVICE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public static getActiveDeviceCount([Z)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v3, p0, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string p0, "invalid-ID"

    return-object p0

    :cond_0
    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    const-string p0, "default-device"

    return-object p0

    :cond_1
    sget-object v0, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->DEVICE_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static isDeviceValid(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDeviceValidOrDefault(I)Z
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Lorg/chromium/media/CommunicationDeviceSelector$DeviceHelpers;->isDeviceValid(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parseStringId(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static selectDefaultDevice([Z)I
    .locals 2

    const/4 v0, 0x1

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x4

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

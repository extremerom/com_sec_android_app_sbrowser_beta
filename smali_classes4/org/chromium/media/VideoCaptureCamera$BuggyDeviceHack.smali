.class Lorg/chromium/media/VideoCaptureCamera$BuggyDeviceHack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuggyDeviceHack"
.end annotation


# static fields
.field private static final COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "XT1096"

    const-string v5, "XT1097"

    const-string v0, "SAMSUNG-SGH-I747"

    const-string v1, "ODROID-U2"

    const-string v2, "XT1092"

    const-string v3, "XT1095"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/VideoCaptureCamera$BuggyDeviceHack;->COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public static getImageFormat()I
    .locals 5

    sget-object v0, Lorg/chromium/media/VideoCaptureCamera$BuggyDeviceHack;->COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x11

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x32315659

    return v0
.end method

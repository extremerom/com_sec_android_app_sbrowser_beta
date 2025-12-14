.class abstract Lorg/chromium/device/gamepad/GamepadMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;,
        Lorg/chromium/device/gamepad/GamepadMappings$XboxCompatibleGamepadMappings;,
        Lorg/chromium/device/gamepad/GamepadMappings$Ps4Ps5GamepadMappings;,
        Lorg/chromium/device/gamepad/GamepadMappings$XboxOneS2016FirmwareMappings;,
        Lorg/chromium/device/gamepad/GamepadMappings$XboxSeriesXBluetoothMappings;,
        Lorg/chromium/device/gamepad/GamepadMappings$SnakebyteIDroidConMappings;,
        Lorg/chromium/device/gamepad/GamepadMappings$StadiaControllerMappings;,
        Lorg/chromium/device/gamepad/GamepadMappings$Dualshock3SixAxisGamepadMappings;,
        Lorg/chromium/device/gamepad/GamepadMappings$Dualshock3SixAxisGamepadMappingsPreP;,
        Lorg/chromium/device/gamepad/GamepadMappings$SamsungEIGP20GamepadMappings;,
        Lorg/chromium/device/gamepad/GamepadMappings$AmazonFireGamepadMappings;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final AMAZON_FIRE_DEVICE_NAME:Ljava/lang/String; = "Amazon Fire Game Controller"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final BROADCOM_VENDOR_ID:I = 0xa5c
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final GOOGLE_VENDOR_ID:I = 0x18d1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MICROSOFT_VENDOR_ID:I = 0x45e
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MICROSOFT_XBOX_PAD_DEVICE_NAME:Ljava/lang/String; = "Microsoft X-Box 360 pad"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NVIDIA_SHIELD_DEVICE_NAME_PREFIX:Ljava/lang/String; = "NVIDIA Corporation NVIDIA Controller"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PS_DUALSHOCK_3_SIXAXIS_DEVICE_NAME:Ljava/lang/String; = "Sony PLAYSTATION(R)3 Controller"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PS_DUALSHOCK_4_PRODUCT_ID:I = 0x5c4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PS_DUALSHOCK_4_SLIM_PRODUCT_ID:I = 0x9cc
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PS_DUALSHOCK_4_USB_RECEIVER_PRODUCT_ID:I = 0xba0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PS_DUAL_SENSE_PRODUCT_ID:I = 0xce6

.field static final SAMSUNG_EI_GP20_DEVICE_NAME:Ljava/lang/String; = "Samsung Game Pad EI-GP20"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SNAKEBYTE_IDROIDCON_PRODUCT_ID:I = 0x8502
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SONY_VENDOR_ID:I = 0x54c
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STADIA_CONTROLLER_PRODUCT_ID:I = 0x9400
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final XBOX_ONE_S_2016_FIRMWARE_PRODUCT_ID:I = 0x2e0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final XBOX_SERIES_X_BLUETOOTH_PRODUCT_ID:I = 0xb13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapCommonDpadButtons([F[F)V

    return-void
.end method

.method public static bridge synthetic b([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapCommonStartSelectMetaButtons([F[F)V

    return-void
.end method

.method public static bridge synthetic c([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapCommonThumbstickButtons([F[F)V

    return-void
.end method

.method public static bridge synthetic d([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapCommonXYABButtons([F[F)V

    return-void
.end method

.method public static bridge synthetic e([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapHatAxisToDpadButtons([F[F)V

    return-void
.end method

.method public static bridge synthetic f([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapLowerTriggerButtonsToBottomShoulder([F[F)V

    return-void
.end method

.method public static bridge synthetic g([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapPedalAxesToBottomShoulder([F[F)V

    return-void
.end method

.method public static getMappings(II[I)Lorg/chromium/device/gamepad/GamepadMappings;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x54c

    if-ne p0, v1, :cond_2

    const/16 v1, 0x5c4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9cc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xba0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xce6

    if-ne p1, v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_2

    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$Ps4Ps5GamepadMappings;

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings$Ps4Ps5GamepadMappings;-><init>()V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$XboxCompatibleGamepadMappings;

    invoke-direct {p0, v0}, Lorg/chromium/device/gamepad/GamepadMappings$XboxCompatibleGamepadMappings;-><init>(I)V

    return-object p0

    :cond_2
    const/16 v1, 0x45e

    if-ne p0, v1, :cond_4

    const/16 v1, 0x2e0

    if-ne p1, v1, :cond_3

    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$XboxOneS2016FirmwareMappings;

    invoke-direct {p0, v0}, Lorg/chromium/device/gamepad/GamepadMappings$XboxOneS2016FirmwareMappings;-><init>(I)V

    return-object p0

    :cond_3
    const/16 v1, 0xb13

    if-ne p1, v1, :cond_4

    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$XboxSeriesXBluetoothMappings;

    invoke-direct {p0, v0}, Lorg/chromium/device/gamepad/GamepadMappings$XboxSeriesXBluetoothMappings;-><init>(I)V

    return-object p0

    :cond_4
    const/16 v1, 0xa5c

    if-ne p0, v1, :cond_5

    const v1, 0x8502

    if-ne p1, v1, :cond_5

    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$SnakebyteIDroidConMappings;

    invoke-direct {p0, p2}, Lorg/chromium/device/gamepad/GamepadMappings$SnakebyteIDroidConMappings;-><init>([I)V

    return-object p0

    :cond_5
    const/16 p2, 0x18d1

    if-ne p0, p2, :cond_6

    const p0, 0x9400

    if-ne p1, p0, :cond_6

    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$StadiaControllerMappings;

    invoke-direct {p0, v0}, Lorg/chromium/device/gamepad/GamepadMappings$StadiaControllerMappings;-><init>(I)V

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMappings(Landroid/view/InputDevice;[ILjava/util/BitSet;)Lorg/chromium/device/gamepad/GamepadMappings;
    .locals 2

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    invoke-static {v0, v1, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->getMappings(II[I)Lorg/chromium/device/gamepad/GamepadMappings;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/device/gamepad/GamepadMappings;->getMappings(Ljava/lang/String;)Lorg/chromium/device/gamepad/GamepadMappings;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;

    invoke-direct {v0, p1, p2}, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;-><init>([ILjava/util/BitSet;)V

    :cond_1
    return-object v0
.end method

.method public static getMappings(Ljava/lang/String;)Lorg/chromium/device/gamepad/GamepadMappings;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "NVIDIA Corporation NVIDIA Controller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "Microsoft X-Box 360 pad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Sony PLAYSTATION(R)3 Controller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$Dualshock3SixAxisGamepadMappings;

    invoke-direct {p0, v1}, Lorg/chromium/device/gamepad/GamepadMappings$Dualshock3SixAxisGamepadMappings;-><init>(I)V

    return-object p0

    :cond_1
    const-string v0, "Samsung Game Pad EI-GP20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$SamsungEIGP20GamepadMappings;

    invoke-direct {p0, v1}, Lorg/chromium/device/gamepad/GamepadMappings$SamsungEIGP20GamepadMappings;-><init>(I)V

    return-object p0

    :cond_2
    const-string v0, "Amazon Fire Game Controller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$AmazonFireGamepadMappings;

    invoke-direct {p0, v1}, Lorg/chromium/device/gamepad/GamepadMappings$AmazonFireGamepadMappings;-><init>(I)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_0
    new-instance p0, Lorg/chromium/device/gamepad/GamepadMappings$XboxCompatibleGamepadMappings;

    invoke-direct {p0, v1}, Lorg/chromium/device/gamepad/GamepadMappings$XboxCompatibleGamepadMappings;-><init>(I)V

    return-object p0
.end method

.method public static getUnknownGamepadMappings([ILjava/util/BitSet;)Lorg/chromium/device/gamepad/GamepadMappings;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;

    invoke-direct {v0, p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;-><init>([ILjava/util/BitSet;)V

    return-object v0
.end method

.method public static bridge synthetic h([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapRXAndRYAxesToRightStick([F[F)V

    return-void
.end method

.method public static bridge synthetic i([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapTriggerAxesToBottomShoulder([F[F)V

    return-void
.end method

.method public static bridge synthetic j([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapTriggerButtonsToTopShoulder([F[F)V

    return-void
.end method

.method public static bridge synthetic k([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapUpperTriggerButtonsToBottomShoulder([F[F)V

    return-void
.end method

.method public static bridge synthetic l([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapXYAxes([F[F)V

    return-void
.end method

.method public static bridge synthetic m([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapZAndRZAxesToRightStick([F[F)V

    return-void
.end method

.method private static mapCommonDpadButtons([F[F)V
    .locals 4

    const/16 v0, 0x14

    aget v0, p1, v0

    const/16 v1, 0x13

    aget v1, p1, v1

    const/16 v2, 0x15

    aget v2, p1, v2

    const/16 v3, 0x16

    aget p1, p1, v3

    const/16 v3, 0xd

    aput v0, p0, v3

    const/16 v0, 0xc

    aput v1, p0, v0

    const/16 v0, 0xe

    aput v2, p0, v0

    const/16 v0, 0xf

    aput p1, p0, v0

    return-void
.end method

.method private static mapCommonStartSelectMetaButtons([F[F)V
    .locals 3

    const/16 v0, 0x6c

    aget v0, p1, v0

    const/16 v1, 0x6d

    aget v1, p1, v1

    const/16 v2, 0x6e

    aget p1, p1, v2

    const/16 v2, 0x9

    aput v0, p0, v2

    const/16 v0, 0x8

    aput v1, p0, v0

    const/16 v0, 0x10

    aput p1, p0, v0

    return-void
.end method

.method private static mapCommonThumbstickButtons([F[F)V
    .locals 2

    const/16 v0, 0x6a

    aget v0, p1, v0

    const/16 v1, 0x6b

    aget p1, p1, v1

    const/16 v1, 0xa

    aput v0, p0, v1

    const/16 v0, 0xb

    aput p1, p0, v0

    return-void
.end method

.method private static mapCommonXYABButtons([F[F)V
    .locals 4

    const/16 v0, 0x60

    aget v0, p1, v0

    const/16 v1, 0x61

    aget v1, p1, v1

    const/16 v2, 0x63

    aget v2, p1, v2

    const/16 v3, 0x64

    aget p1, p1, v3

    const/4 v3, 0x0

    aput v0, p0, v3

    const/4 v0, 0x1

    aput v1, p0, v0

    const/4 v0, 0x2

    aput v2, p0, v0

    const/4 v0, 0x3

    aput p1, p0, v0

    return-void
.end method

.method private static mapHatAxisToDpadButtons([F[F)V
    .locals 4

    const/16 v0, 0xf

    aget v1, p1, v0

    const/16 v2, 0x10

    aget p1, p1, v2

    const/16 v2, 0xe

    invoke-static {v1}, Lorg/chromium/device/gamepad/GamepadMappings;->negativeAxisValueAsButton(F)F

    move-result v3

    aput v3, p0, v2

    invoke-static {v1}, Lorg/chromium/device/gamepad/GamepadMappings;->positiveAxisValueAsButton(F)F

    move-result v1

    aput v1, p0, v0

    const/16 v0, 0xc

    invoke-static {p1}, Lorg/chromium/device/gamepad/GamepadMappings;->negativeAxisValueAsButton(F)F

    move-result v1

    aput v1, p0, v0

    const/16 v0, 0xd

    invoke-static {p1}, Lorg/chromium/device/gamepad/GamepadMappings;->positiveAxisValueAsButton(F)F

    move-result p1

    aput p1, p0, v0

    return-void
.end method

.method private static mapLowerTriggerButtonsToBottomShoulder([F[F)V
    .locals 2

    const/16 v0, 0x68

    aget v0, p1, v0

    const/16 v1, 0x69

    aget p1, p1, v1

    const/4 v1, 0x6

    aput v0, p0, v1

    const/4 v0, 0x7

    aput p1, p0, v0

    return-void
.end method

.method private static mapPedalAxesToBottomShoulder([F[F)V
    .locals 2

    const/16 v0, 0x17

    aget v0, p1, v0

    const/16 v1, 0x16

    aget p1, p1, v1

    const/4 v1, 0x6

    aput v0, p0, v1

    const/4 v0, 0x7

    aput p1, p0, v0

    return-void
.end method

.method private static mapRXAndRYAxesToRightStick([F[F)V
    .locals 2

    const/16 v0, 0xc

    aget v0, p1, v0

    const/4 v1, 0x2

    aput v0, p0, v1

    const/16 v0, 0xd

    aget p1, p1, v0

    const/4 v0, 0x3

    aput p1, p0, v0

    return-void
.end method

.method private static mapTriggerAxesToBottomShoulder([F[F)V
    .locals 2

    const/16 v0, 0x11

    aget v0, p1, v0

    const/16 v1, 0x12

    aget p1, p1, v1

    const/4 v1, 0x6

    aput v0, p0, v1

    const/4 v0, 0x7

    aput p1, p0, v0

    return-void
.end method

.method private static mapTriggerButtonsToTopShoulder([F[F)V
    .locals 2

    const/16 v0, 0x66

    aget v0, p1, v0

    const/16 v1, 0x67

    aget p1, p1, v1

    const/4 v1, 0x4

    aput v0, p0, v1

    const/4 v0, 0x5

    aput p1, p0, v0

    return-void
.end method

.method private static mapUpperTriggerButtonsToBottomShoulder([F[F)V
    .locals 2

    const/16 v0, 0x66

    aget v0, p1, v0

    const/16 v1, 0x67

    aget p1, p1, v1

    const/4 v1, 0x6

    aput v0, p0, v1

    const/4 v0, 0x7

    aput p1, p0, v0

    return-void
.end method

.method private static mapXYAxes([F[F)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x1

    aget p1, p1, v0

    aput p1, p0, v0

    return-void
.end method

.method private static mapZAndRZAxesToRightStick([F[F)V
    .locals 2

    const/16 v0, 0xb

    aget v0, p1, v0

    const/4 v1, 0x2

    aput v0, p0, v1

    const/16 v0, 0xe

    aget p1, p1, v0

    const/4 v0, 0x3

    aput p1, p0, v0

    return-void
.end method

.method private static mapZAxisToBottomShoulder([F[F)V
    .locals 4

    const/16 v0, 0xb

    aget p1, p1, v0

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x6

    aput v1, p0, v3

    neg-float p1, p1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    move v2, p1

    :cond_1
    const/4 p1, 0x7

    aput v2, p0, p1

    return-void
.end method

.method public static bridge synthetic n([F[F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/device/gamepad/GamepadMappings;->mapZAxisToBottomShoulder([F[F)V

    return-void
.end method

.method public static negativeAxisValueAsButton(F)F
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static positiveAxisValueAsButton(F)F
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getButtonsLength()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method

.method public isStandard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract mapToStandardGamepad([F[F[F[F)V
.end method

.class Lorg/chromium/device/gamepad/GamepadMappings$Ps4Ps5GamepadMappings;
.super Lorg/chromium/device/gamepad/GamepadMappings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/gamepad/GamepadMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ps4Ps5GamepadMappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings;-><init>()V

    return-void
.end method

.method private static scaleRxRy(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public mapToStandardGamepad([F[F[F[F)V
    .locals 4

    const/16 p0, 0x60

    aget p0, p4, p0

    const/16 v0, 0x61

    aget v0, p4, v0

    const/16 v1, 0x62

    aget v1, p4, v1

    const/16 v2, 0x63

    aget v2, p4, v2

    const/4 v3, 0x0

    aput v0, p2, v3

    const/4 v0, 0x1

    aput v1, p2, v0

    const/4 v0, 0x2

    aput p0, p2, v0

    const/4 p0, 0x3

    aput v2, p2, p0

    const/16 p0, 0x64

    aget p0, p4, p0

    const/16 v0, 0x65

    aget v0, p4, v0

    const/4 v1, 0x4

    aput p0, p2, v1

    const/4 p0, 0x5

    aput v0, p2, p0

    const/16 p0, 0xc

    aget p0, p3, p0

    const/16 v0, 0xd

    aget v0, p3, v0

    const/4 v1, 0x6

    invoke-static {p0}, Lorg/chromium/device/gamepad/GamepadMappings$Ps4Ps5GamepadMappings;->scaleRxRy(F)F

    move-result p0

    aput p0, p2, v1

    const/4 p0, 0x7

    invoke-static {v0}, Lorg/chromium/device/gamepad/GamepadMappings$Ps4Ps5GamepadMappings;->scaleRxRy(F)F

    move-result v0

    aput v0, p2, p0

    const/16 p0, 0x68

    aget p0, p4, p0

    const/16 v0, 0x69

    aget v0, p4, v0

    const/16 v1, 0x8

    aput p0, p2, v1

    const/16 p0, 0x9

    aput v0, p2, p0

    const/16 p0, 0x6d

    aget p0, p4, p0

    const/16 v0, 0x6c

    aget v0, p4, v0

    const/16 v1, 0xa

    aput p0, p2, v1

    const/16 p0, 0xb

    aput v0, p2, p0

    const/16 p0, 0x6e

    aget p0, p4, p0

    const/16 p4, 0x10

    aput p0, p2, p4

    invoke-static {p2, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->e([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->l([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->m([F[F)V

    return-void
.end method

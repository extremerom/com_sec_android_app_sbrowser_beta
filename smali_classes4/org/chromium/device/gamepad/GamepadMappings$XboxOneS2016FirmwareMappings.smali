.class Lorg/chromium/device/gamepad/GamepadMappings$XboxOneS2016FirmwareMappings;
.super Lorg/chromium/device/gamepad/GamepadMappings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/gamepad/GamepadMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XboxOneS2016FirmwareMappings"
.end annotation


# instance fields
.field private mLeftTriggerActivated:Z

.field private mRightTriggerActivated:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings$XboxOneS2016FirmwareMappings;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonsLength()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public mapToStandardGamepad([F[F[F[F)V
    .locals 6

    const/16 v0, 0x60

    aget v0, p4, v0

    const/4 v1, 0x0

    aput v0, p2, v1

    const/16 v0, 0x61

    aget v0, p4, v0

    const/4 v1, 0x1

    aput v0, p2, v1

    const/16 v0, 0x62

    aget v0, p4, v0

    const/4 v2, 0x2

    aput v0, p2, v2

    const/16 v0, 0x63

    aget v0, p4, v0

    const/4 v2, 0x3

    aput v0, p2, v2

    const/16 v0, 0x64

    aget v0, p4, v0

    const/4 v2, 0x4

    aput v0, p2, v2

    const/16 v0, 0x65

    aget v0, p4, v0

    const/4 v2, 0x5

    aput v0, p2, v2

    const/16 v0, 0x66

    aget v0, p4, v0

    const/16 v2, 0x8

    aput v0, p2, v2

    const/16 v0, 0x67

    aget v0, p4, v0

    const/16 v2, 0x9

    aput v0, p2, v2

    const/16 v0, 0x68

    aget v0, p4, v0

    const/16 v2, 0xa

    aput v0, p2, v2

    const/16 v0, 0x69

    aget p4, p4, v0

    const/16 v0, 0xb

    aput p4, p2, v0

    aget p4, p3, v0

    const/4 v0, 0x0

    cmpl-float v2, p4, v0

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lorg/chromium/device/gamepad/GamepadMappings$XboxOneS2016FirmwareMappings;->mLeftTriggerActivated:Z

    :cond_0
    const/16 v2, 0xe

    aget v2, p3, v2

    cmpl-float v3, v2, v0

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lorg/chromium/device/gamepad/GamepadMappings$XboxOneS2016FirmwareMappings;->mRightTriggerActivated:Z

    :cond_1
    iget-boolean v1, p0, Lorg/chromium/device/gamepad/GamepadMappings$XboxOneS2016FirmwareMappings;->mLeftTriggerActivated:Z

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x6

    if-eqz v1, :cond_2

    add-float/2addr p4, v4

    div-float/2addr p4, v3

    aput p4, p2, v5

    goto :goto_0

    :cond_2
    aput v0, p2, v5

    :goto_0
    iget-boolean p0, p0, Lorg/chromium/device/gamepad/GamepadMappings$XboxOneS2016FirmwareMappings;->mRightTriggerActivated:Z

    const/4 p4, 0x7

    if-eqz p0, :cond_3

    add-float/2addr v2, v4

    div-float/2addr v2, v3

    aput v2, p2, p4

    goto :goto_1

    :cond_3
    aput v0, p2, p4

    :goto_1
    invoke-static {p2, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->e([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->l([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->h([F[F)V

    return-void
.end method

.class Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;
.super Lorg/chromium/device/gamepad/GamepadMappings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/gamepad/GamepadMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownGamepadMappings"
.end annotation


# instance fields
.field private final mHasMetaButton:Z

.field private mLeftTriggerAxis:I

.field private mRightStickXAxis:I

.field private mRightStickYAxis:I

.field private mRightTriggerAxis:I

.field private mUseHatAxes:Z


# direct methods
.method public constructor <init>([ILjava/util/BitSet;)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mLeftTriggerAxis:I

    iput v0, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mRightTriggerAxis:I

    iput v0, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mRightStickXAxis:I

    iput v0, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mRightStickYAxis:I

    const/16 v0, 0x6e

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    iput-boolean p2, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mHasMetaButton:Z

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    aget v2, p1, v0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iput v2, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mRightTriggerAxis:I

    goto :goto_1

    :pswitch_2
    iput v2, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mLeftTriggerAxis:I

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_4
    iput v2, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mRightStickYAxis:I

    goto :goto_1

    :pswitch_5
    iput v2, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mRightStickXAxis:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mUseHatAxes:Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getButtonsLength()I
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mHasMetaButton:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method public isStandard()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mapToStandardGamepad([F[F[F[F)V
    .locals 4

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->d([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->j([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->c([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->b([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->l([F[F)V

    iget v0, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mLeftTriggerAxis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mRightTriggerAxis:I

    if-eq v2, v1, :cond_0

    aget v0, p3, v0

    aget v2, p3, v2

    const/4 v3, 0x6

    aput v0, p2, v3

    const/4 v0, 0x7

    aput v2, p2, v0

    goto :goto_0

    :cond_0
    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->f([F[F)V

    :goto_0
    iget v0, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mRightStickXAxis:I

    if-eq v0, v1, :cond_1

    iget v2, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mRightStickYAxis:I

    if-eq v2, v1, :cond_1

    aget v0, p3, v0

    aget v1, p3, v2

    const/4 v2, 0x2

    aput v0, p1, v2

    const/4 v0, 0x3

    aput v1, p1, v0

    :cond_1
    iget-boolean p0, p0, Lorg/chromium/device/gamepad/GamepadMappings$UnknownGamepadMappings;->mUseHatAxes:Z

    if-eqz p0, :cond_2

    invoke-static {p2, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->e([F[F)V

    goto :goto_1

    :cond_2
    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->a([F[F)V

    :goto_1
    return-void
.end method

.class Lorg/chromium/device/gamepad/GamepadMappings$StadiaControllerMappings;
.super Lorg/chromium/device/gamepad/GamepadMappings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/gamepad/GamepadMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StadiaControllerMappings"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings$StadiaControllerMappings;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonsLength()I
    .locals 0

    const/16 p0, 0x13

    return p0
.end method

.method public mapToStandardGamepad([F[F[F[F)V
    .locals 1

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->d([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->j([F[F)V

    invoke-static {p2, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->g([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->c([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->b([F[F)V

    invoke-static {p2, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->e([F[F)V

    const/16 p0, 0xbc

    aget p0, p4, p0

    const/16 v0, 0x11

    aput p0, p2, v0

    const/16 p0, 0xbd

    aget p0, p4, p0

    const/16 p4, 0x12

    aput p0, p2, p4

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->l([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->m([F[F)V

    return-void
.end method

.class Lorg/chromium/device/gamepad/GamepadMappings$Dualshock3SixAxisGamepadMappingsPreP;
.super Lorg/chromium/device/gamepad/GamepadMappings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/gamepad/GamepadMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dualshock3SixAxisGamepadMappingsPreP"
.end annotation


# virtual methods
.method public mapToStandardGamepad([F[F[F[F)V
    .locals 4

    const/16 p0, 0x60

    aget p0, p4, p0

    const/16 v0, 0x61

    aget v0, p4, v0

    const/16 v1, 0x63

    aget v1, p4, v1

    const/16 v2, 0x64

    aget v2, p4, v2

    const/4 v3, 0x0

    aput v1, p2, v3

    const/4 v1, 0x1

    aput v2, p2, v1

    const/4 v1, 0x2

    aput p0, p2, v1

    const/4 p0, 0x3

    aput v0, p2, p0

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->j([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->c([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->a([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->b([F[F)V

    invoke-static {p2, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->i([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->l([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->m([F[F)V

    return-void
.end method

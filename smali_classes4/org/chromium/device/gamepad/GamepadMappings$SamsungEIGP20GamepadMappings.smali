.class Lorg/chromium/device/gamepad/GamepadMappings$SamsungEIGP20GamepadMappings;
.super Lorg/chromium/device/gamepad/GamepadMappings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/gamepad/GamepadMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungEIGP20GamepadMappings"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings$SamsungEIGP20GamepadMappings;-><init>()V

    return-void
.end method


# virtual methods
.method public mapToStandardGamepad([F[F[F[F)V
    .locals 0

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->d([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->k([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->c([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->b([F[F)V

    invoke-static {p2, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->e([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->l([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->h([F[F)V

    return-void
.end method

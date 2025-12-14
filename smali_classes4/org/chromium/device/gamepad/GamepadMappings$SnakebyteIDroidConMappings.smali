.class Lorg/chromium/device/gamepad/GamepadMappings$SnakebyteIDroidConMappings;
.super Lorg/chromium/device/gamepad/GamepadMappings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/gamepad/GamepadMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnakebyteIDroidConMappings"
.end annotation


# instance fields
.field private final mAnalogMode:Z


# direct methods
.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/device/gamepad/GamepadMappings;-><init>()V

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lorg/chromium/device/gamepad/GamepadMappings$SnakebyteIDroidConMappings;->arrayContains([II)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/device/gamepad/GamepadMappings$SnakebyteIDroidConMappings;->mAnalogMode:Z

    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getButtonsLength()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public mapToStandardGamepad([F[F[F[F)V
    .locals 5

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->d([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->j([F[F)V

    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->b([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->l([F[F)V

    invoke-static {p2, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->e([F[F)V

    const/16 v0, 0x6a

    aget v0, p4, v0

    const/16 v1, 0x6b

    aget v1, p4, v1

    const/16 v2, 0x62

    aget v2, p4, v2

    const/16 v3, 0x65

    aget v3, p4, v3

    const/16 v4, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p2, v4

    const/16 v0, 0xb

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p2, v0

    iget-boolean p0, p0, Lorg/chromium/device/gamepad/GamepadMappings$SnakebyteIDroidConMappings;->mAnalogMode:Z

    if-eqz p0, :cond_0

    invoke-static {p2, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->n([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->h([F[F)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p4}, Lorg/chromium/device/gamepad/GamepadMappings;->f([F[F)V

    invoke-static {p1, p3}, Lorg/chromium/device/gamepad/GamepadMappings;->m([F[F)V

    :goto_0
    return-void
.end method

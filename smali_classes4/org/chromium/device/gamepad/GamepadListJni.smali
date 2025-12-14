.class Lorg/chromium/device/gamepad/GamepadListJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/gamepad/GamepadList$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/device/gamepad/GamepadList$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/device/gamepad/GamepadListJni;

    invoke-direct {v0}, Lorg/chromium/device/gamepad/GamepadListJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setGamepadData(Lorg/chromium/device/gamepad/GamepadList;JIZZLjava/lang/String;IIJ[F[FIZ)V
    .locals 0

    invoke-static/range {p1 .. p15}, LJ/N;->MOkngxPY(Ljava/lang/Object;JIZZLjava/lang/Object;IIJLjava/lang/Object;Ljava/lang/Object;IZ)V

    return-void
.end method

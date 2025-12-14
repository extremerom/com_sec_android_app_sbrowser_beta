.class Lorg/chromium/device/gamepad/GamepadList$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/gamepad/GamepadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/chromium/device/gamepad/GamepadList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/device/gamepad/GamepadList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/device/gamepad/GamepadList;-><init>(I)V

    sput-object v0, Lorg/chromium/device/gamepad/GamepadList$LazyHolder;->INSTANCE:Lorg/chromium/device/gamepad/GamepadList;

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/device/gamepad/GamepadList;
    .locals 1

    sget-object v0, Lorg/chromium/device/gamepad/GamepadList$LazyHolder;->INSTANCE:Lorg/chromium/device/gamepad/GamepadList;

    return-object v0
.end method

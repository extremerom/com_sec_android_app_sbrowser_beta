.class final enum Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

.field public static final enum ACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

.field public static final enum INACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->INACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->ACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->INACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->ACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->$values()[Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->$VALUES:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->$VALUES:[Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    return-object v0
.end method

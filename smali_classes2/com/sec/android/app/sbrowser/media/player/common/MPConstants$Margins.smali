.class public final enum Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/common/MPConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Margins"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

.field public static final enum BOTTOM:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

.field public static final enum LEFT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

.field public static final enum RIGHT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

.field public static final enum TOP:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->LEFT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->RIGHT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->TOP:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    sget-object v3, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->BOTTOM:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->LEFT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->RIGHT:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    const-string v1, "TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->TOP:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->BOTTOM:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->$values()[Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->$VALUES:[Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->$VALUES:[Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;

    return-object v0
.end method

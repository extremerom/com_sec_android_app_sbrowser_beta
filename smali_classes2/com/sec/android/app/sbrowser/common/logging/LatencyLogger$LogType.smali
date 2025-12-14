.class public final enum Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0084\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "START",
        "STOP",
        "LOG",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

.field public static final enum LOG:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

.field public static final enum START:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

.field public static final enum STOP:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->START:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->STOP:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->LOG:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->START:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    const-string v1, "STOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->STOP:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    const-string v1, "LOG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->LOG:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->$values()[Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->$ENTRIES:Llb/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    return-object v0
.end method

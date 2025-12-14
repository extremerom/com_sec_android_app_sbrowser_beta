.class public final enum Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;",
        "",
        "(Ljava/lang/String;I)V",
        "EARLY_MORNING",
        "MORNING",
        "LATE_MORNING",
        "LUNCH",
        "AFTERNOON",
        "EVENING",
        "NIGHT",
        "LATE_NIGHT",
        "deepsky-sdk-aisuggestion-1.6.13_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

.field public static final enum AFTERNOON:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

.field public static final enum EARLY_MORNING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

.field public static final enum EVENING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

.field public static final enum LATE_MORNING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

.field public static final enum LATE_NIGHT:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

.field public static final enum LUNCH:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

.field public static final enum MORNING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

.field public static final enum NIGHT:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;
    .locals 8

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->EARLY_MORNING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    sget-object v1, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->MORNING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    sget-object v2, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->LATE_MORNING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    sget-object v3, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->LUNCH:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    sget-object v4, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->AFTERNOON:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    sget-object v5, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->EVENING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    sget-object v6, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->NIGHT:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    sget-object v7, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->LATE_NIGHT:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    const-string v1, "EARLY_MORNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->EARLY_MORNING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    const-string v1, "MORNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->MORNING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    const-string v1, "LATE_MORNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->LATE_MORNING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    const-string v1, "LUNCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->LUNCH:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    const-string v1, "AFTERNOON"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->AFTERNOON:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    const-string v1, "EVENING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->EVENING:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    const-string v1, "NIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->NIGHT:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    const-string v1, "LATE_NIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->LATE_NIGHT:Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    invoke-static {}, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->$values()[Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->$VALUES:[Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;->$VALUES:[Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/aisuggestion/schema/core/DailyTime;

    return-object v0
.end method

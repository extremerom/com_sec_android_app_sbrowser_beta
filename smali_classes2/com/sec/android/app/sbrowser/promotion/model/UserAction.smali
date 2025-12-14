.class public final enum Lcom/sec/android/app/sbrowser/promotion/model/UserAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/promotion/model/UserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

.field public static final enum NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

.field public static final enum NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

.field public static final enum POSITIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;


# instance fields
.field private mEventId:Ljava/lang/String;

.field private mPromotionResult:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/promotion/model/UserAction;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    sget-object v2, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->POSITIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    const-string v1, "5503"

    sget-object v2, Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;->NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    const-string v3, "NEGATIVE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    const-string v1, "5504"

    sget-object v2, Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    const-string v3, "NEUTRAL"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    const-string v1, "5502"

    sget-object v2, Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;->POSITIVE:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    const-string v3, "POSITIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->POSITIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->$values()[Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->$VALUES:[Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->mEventId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->mPromotionResult:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/model/UserAction;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/promotion/model/UserAction;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->$VALUES:[Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    return-object v0
.end method


# virtual methods
.method public getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->mEventId:Ljava/lang/String;

    return-object p0
.end method

.method public getPromotionResult()Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->mPromotionResult:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    return-object p0
.end method

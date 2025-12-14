.class final enum Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

.field public static final enum QUICK_ACCESS_PAGE_NEWS_FEED:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->QUICK_ACCESS_PAGE_NEWS_FEED:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    filled-new-array {v0}, [Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    const/4 v1, 0x0

    const-string v2, "quick_access_page_news_feed"

    const-string v3, "QUICK_ACCESS_PAGE_NEWS_FEED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->QUICK_ACCESS_PAGE_NEWS_FEED:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->$values()[Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->$VALUES:[Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->values()[Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->$VALUES:[Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->mKey:Ljava/lang/String;

    return-object p0
.end method

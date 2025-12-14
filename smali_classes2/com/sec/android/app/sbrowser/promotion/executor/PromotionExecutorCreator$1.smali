.class synthetic Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorCreator$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$sbrowser$promotion$executor$PromotionExecutorId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->values()[Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorCreator$1;->$SwitchMap$com$sec$android$app$sbrowser$promotion$executor$PromotionExecutorId:[I

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;->QUICK_ACCESS_PAGE_NEWS_FEED:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

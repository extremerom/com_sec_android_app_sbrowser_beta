.class Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;->fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$Callback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountsAvailable([I)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p1, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "RESULT (blocked ads) : "

    const-string v0, "AdBlockerDataSource"

    invoke-static {v3, p1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$Callback;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;

    invoke-direct {p1, v1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;-><init>(II)V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/AdBlockerDataSource$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void
.end method

.method public onStatsAvailable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

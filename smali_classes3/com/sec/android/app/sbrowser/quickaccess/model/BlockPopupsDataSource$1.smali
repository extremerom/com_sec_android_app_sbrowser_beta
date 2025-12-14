.class Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;->fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountsAvailable([I)V
    .locals 0

    return-void
.end method

.method public onStatsAvailable(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;->isPopupBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;

    invoke-direct {p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;-><init>(II)V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void
.end method

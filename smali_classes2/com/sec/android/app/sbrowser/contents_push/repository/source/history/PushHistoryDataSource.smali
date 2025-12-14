.class public Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mModel:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->mModel:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;

    return-void
.end method


# virtual methods
.method public addPush(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->mModel:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;->save(Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;)V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->mModel:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;->clear()V

    return-void
.end method

.method public getPushHistories(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->mModel:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;->findAllByOrderByDesc(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getReceivedTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->mModel:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;->find(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->getReceivedDate()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setPushOpened(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/PushHistoryDataSource;->mModel:Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/history/ContentsPushModel;->update(Ljava/lang/String;I)Z

    return-void
.end method

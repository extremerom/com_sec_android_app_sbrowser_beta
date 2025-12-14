.class Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/history/TinHistoryListenerHelper$LazyHolder;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;-><init>()V

    return-void
.end method

.method private clearAll()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;->onHistoryCleared()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private deleteInfo(Ljava/lang/String;J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;->onHistoryItemDeleted(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper$LazyHolder;->a()Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;

    move-result-object v0

    return-object v0
.end method

.method private setInfo(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    if-eqz v0, :cond_0

    new-instance v7, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-interface {v0, v7}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;->onHistoryItemReceived(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateInfo(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-object v0, v0, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;->onHistoryItemUpdated(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

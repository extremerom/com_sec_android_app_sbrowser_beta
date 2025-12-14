.class public interface abstract Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract deleteItems(Ljava/util/List;)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;"
        }
    .end annotation
.end method

.method public abstract getItems(Ljava/util/List;)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;"
        }
    .end annotation
.end method

.method public abstract getKeys(Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
.end method

.method public abstract getServerTimeStamp()J
.end method

.method public abstract getUpdates(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
.end method

.method public abstract setItems(Ljava/util/List;)Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;"
        }
    .end annotation
.end method

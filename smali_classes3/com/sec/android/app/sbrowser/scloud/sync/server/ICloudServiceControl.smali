.class public interface abstract Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteItem(Ljava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract downloadItem(Ljava/util/List;ZII)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;ZII)Z"
        }
    .end annotation
.end method

.method public abstract getKeys(Ljava/lang/String;JLjava/util/HashMap;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getServerTimestamp()J
.end method

.method public abstract init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;)V
.end method

.method public abstract uploadItem(Ljava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;Z)Z"
        }
    .end annotation
.end method

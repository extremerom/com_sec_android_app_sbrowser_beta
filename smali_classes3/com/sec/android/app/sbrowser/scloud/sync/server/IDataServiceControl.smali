.class public interface abstract Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteItem(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract downloadItem(Ljava/util/List;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZII)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/lang/String;",
            "ZII)Z"
        }
    .end annotation
.end method

.method public abstract getKeys(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Landroid/content/ContentValues;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Landroid/content/ContentValues;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;)V
.end method

.method public abstract uploadItem(Ljava/util/List;Landroid/os/ParcelFileDescriptor;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)Z"
        }
    .end annotation
.end method

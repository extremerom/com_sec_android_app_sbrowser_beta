.class public interface abstract Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract complete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)Z
.end method

.method public abstract deleteLocal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/lang/String;)Z
.end method

.method public abstract getAttachmentFileInfo(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILjava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;
.end method

.method public abstract getLocalChange(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Lcom/sec/android/app/sbrowser/scloud/sync/data/Attachments;)Ljava/lang/String;
.end method

.method public abstract isColdStartable(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;)Z
.end method

.method public abstract prepareToSync(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateLocal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/util/List;Ljava/util/List;Ljava/lang/String;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "I",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

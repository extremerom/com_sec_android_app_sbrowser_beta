.class public interface abstract Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract completeDownload(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract completeUpload(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/List;Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getLocalFilePaths(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/List;Ljava/util/List;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation
.end method

.method public abstract ready(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;",
            ">;"
        }
    .end annotation
.end method

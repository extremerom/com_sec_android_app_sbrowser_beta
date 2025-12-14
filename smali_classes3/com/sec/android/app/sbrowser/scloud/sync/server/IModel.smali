.class public interface abstract Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract generateSyncKey()Ljava/lang/String;
.end method

.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getCloudServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/ICloudServiceControl;
.end method

.method public abstract getDataServiceControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IDataServiceControl;
.end method

.method public abstract getDataVersion()I
.end method

.method public abstract getLocalFilePathPrefix(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IOEMControl;
.end method

.method public abstract getOemContentUri()Landroid/net/Uri;
.end method

.method public abstract getRecordOEMControl()Lcom/sec/android/app/sbrowser/scloud/sync/server/IRecordOEMControl;
.end method

.method public abstract getServerFilePathPrefix(ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;
.end method

.method public abstract getTables()Ljava/lang/String;
.end method

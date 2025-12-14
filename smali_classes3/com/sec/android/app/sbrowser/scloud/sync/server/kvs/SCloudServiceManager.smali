.class public Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;


# instance fields
.field private mAuthManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

.field private mCtid:Ljava/lang/String;

.field private mRecordServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/KVSServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/ICloudServiceManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;->mRecordServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;

    return-void
.end method


# virtual methods
.method public getAuthManager()Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;->mAuthManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    return-object p0
.end method

.method public getCtid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;->mCtid:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordServiceManager()Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;->mRecordServiceManager:Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/IRecordServiceManager;

    return-object p0
.end method

.method public setAuthManager(Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;->mAuthManager:Lcom/sec/android/app/sbrowser/scloud/sync/common/auth/AuthData;

    return-void
.end method

.method public setCtid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/kvs/SCloudServiceManager;->mCtid:Ljava/lang/String;

    return-void
.end method

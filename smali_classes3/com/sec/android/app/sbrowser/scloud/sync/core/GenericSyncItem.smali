.class public Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SyncVo:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDownloadPath:Ljava/lang/String;

.field private final mLocalKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TSyncVo;>;"
        }
    .end annotation
.end field

.field private final mServerChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TSyncVo;>;"
        }
    .end annotation
.end field

.field private final mToDeleteLocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TSyncVo;>;"
        }
    .end annotation
.end field

.field private final mToDeleteServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TSyncVo;>;"
        }
    .end annotation
.end field

.field private final mToDownloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TSyncVo;>;"
        }
    .end annotation
.end field

.field private final mToUploadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TSyncVo;>;"
        }
    .end annotation
.end field

.field private mUploadPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToUploadList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDownloadList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDeleteLocalList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDeleteServerList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mServerChanges:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mLocalKeys:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mUploadPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mDownloadPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDeleteLocalList(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSyncVo;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDeleteLocalList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDeleteServerList(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSyncVo;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDeleteServerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDownloadList(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSyncVo;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDownloadList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLocalKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TSyncVo;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mLocalKeys:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addServerChanges(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TSyncVo;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mServerChanges:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public addUploadList(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSyncVo;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToUploadList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDeleteLocalItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSyncVo;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDeleteLocalList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteLocalListSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDeleteLocalList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getDeleteServerItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSyncVo;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDeleteServerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteServerListSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDeleteServerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getDownloadItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSyncVo;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDownloadList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadListSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDownloadList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mDownloadPath:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalKey(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSyncVo;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mLocalKeys:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLocalKeysSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mLocalKeys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getServerChange(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSyncVo;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mServerChanges:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getServerChangesSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mServerChanges:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public getServerItems()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TSyncVo;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mServerChanges:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getUploadItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSyncVo;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToUploadList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getUploadListSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToUploadList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getUploadPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mUploadPath:Ljava/lang/String;

    return-object p0
.end method

.method public removeDeleteLocal(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSyncVo;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mToDeleteLocalList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeServerChange(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mServerChanges:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mDownloadPath:Ljava/lang/String;

    return-void
.end method

.method public setUploadPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/core/GenericSyncItem;->mUploadPath:Ljava/lang/String;

    return-void
.end method

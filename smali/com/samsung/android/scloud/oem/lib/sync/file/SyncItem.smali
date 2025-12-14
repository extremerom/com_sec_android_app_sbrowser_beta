.class public Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;,
        Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;
    }
.end annotation


# instance fields
.field private syncItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;->syncItemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSyncItem(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->localId(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->syncKey(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->timestamp(J)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->deleted(Z)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->tag(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->build()Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;->syncItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSyncItem()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;->syncItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getSyncItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;->syncItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

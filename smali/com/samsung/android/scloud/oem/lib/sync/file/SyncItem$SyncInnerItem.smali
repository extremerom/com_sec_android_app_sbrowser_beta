.class public Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncInnerItem"
.end annotation


# instance fields
.field private deleted:Z

.field private localId:Ljava/lang/String;

.field private syncKey:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->b(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->localId:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->c(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->syncKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->e(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->timestamp:J

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->a(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->deleted:Z

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->d(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->localId:Ljava/lang/String;

    return-object p0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->syncKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->timestamp:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->deleted:Z

    return p0
.end method

.class Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncItemBuilder"
.end annotation


# instance fields
.field private deleted:Z

.field private localId:Ljava/lang/String;

.field private syncKey:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->localId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->syncKey:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->timestamp:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->deleted:Z

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->tag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->deleted:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->localId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->syncKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->timestamp:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;
    .locals 1

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;-><init>(Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;)V

    return-object v0
.end method

.method public deleted(Z)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->deleted:Z

    return-object p0
.end method

.method public localId(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->localId:Ljava/lang/String;

    return-object p0
.end method

.method public syncKey(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->syncKey:Ljava/lang/String;

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(J)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncItemBuilder;->timestamp:J

    return-object p0
.end method

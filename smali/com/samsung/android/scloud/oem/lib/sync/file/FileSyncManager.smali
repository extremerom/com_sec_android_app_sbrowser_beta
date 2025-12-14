.class public Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;
.super LP8/a;
.source "SourceFile"


# static fields
.field public static final CONTENT_SYNC_FILE:Ljava/lang/String; = "content.sync"

.field private static final SERVICE_HANDLER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LP8/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FileSyncManager"


# instance fields
.field private final syncClient:Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$1;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$1;-><init>()V

    const-string v2, "isColdStartable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$2;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$2;-><init>()V

    const-string v2, "prepare"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$3;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$3;-><init>()V

    const-string v2, "getAttachmentInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$4;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$4;-><init>()V

    const-string v2, "upload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$5;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$5;-><init>()V

    const-string v2, "download"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$6;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$6;-><init>()V

    const-string v2, "deleteItem"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$7;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$7;-><init>()V

    const-string v2, "complete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;->syncClient:Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;

    return-void
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;->syncClient:Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;

    return-object p0
.end method

.method public getServiceHandler(Ljava/lang/String;)LP8/b;
    .locals 0

    sget-object p0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LP8/b;

    return-object p0
.end method

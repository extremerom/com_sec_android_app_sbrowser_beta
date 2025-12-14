.class public Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public defaultInitialized(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MSLaFks3(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)J
    .locals 0

    invoke-static {p1}, LJ/N;->M7YA7k2$(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public initContentBlockerFromByteBuffer(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;IZ)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MKVYyRYU(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    return-void
.end method

.method public initContentBlockerFromCache(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MZySkVgs(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public initialized(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MIjV8GzQ(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public resetContentBlocker(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MSCMoHHp(JLjava/lang/Object;)V

    return-void
.end method

.method public resetDefaultContentBlocker(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MTfR3YUK(JLjava/lang/Object;)V

    return-void
.end method

.method public setAAABaitElementDetectionEnabled(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MXVB1fqX(JLjava/lang/Object;Z)V

    return-void
.end method

.method public setAAABaitJavascriptDetectionEnabled(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Ma_IH4UK(JLjava/lang/Object;Z)V

    return-void
.end method

.method public setFiltersCacheFilePath(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MS$aXwI9(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setSitekeyRulesEnabled(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mr1wCjfv(JLjava/lang/Object;Z)V

    return-void
.end method

.method public setTemporarilyUnblockAds(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;JZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->Mnc$cDXU(JLjava/lang/Object;JZ)V

    return-void
.end method

.class Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$Natives;


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

.method public static get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContentBlockCounts(JJJZLcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->MxscyXU0(JJJZLjava/lang/Object;)V

    return-void
.end method

.method public init()J
    .locals 2

    invoke-static {}, LJ/N;->MRy0umzC()J

    move-result-wide v0

    return-wide v0
.end method

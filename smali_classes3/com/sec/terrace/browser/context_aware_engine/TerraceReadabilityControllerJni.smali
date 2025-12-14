.class public Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityControllerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;


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

.method public static get()Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityControllerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityControllerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MiLfrnev(J)V

    return-void
.end method

.method public extractArticle(JLjava/lang/String;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MoNr8PqC(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MfAyBuu3(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public runReadabilityDetection(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mw6PSyA2(J)V

    return-void
.end method

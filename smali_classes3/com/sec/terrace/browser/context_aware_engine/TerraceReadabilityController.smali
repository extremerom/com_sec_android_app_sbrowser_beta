.class public Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final USER_DATA_KEY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNativeTerraceReadabilityController:J

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;

    sput-object v0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->USER_DATA_KEY:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2
    .param p1    # Lorg/chromium/content_public/browser/WebContents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mObservers:Ljava/util/List;

    invoke-static {}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityControllerJni;->get()Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;->init(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mNativeTerraceReadabilityController:J

    return-void
.end method

.method public static convertMapToJsonString(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "{}"

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createForTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;
    .locals 3
    .param p0    # Lcom/sec/terrace/Terrace;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->getForTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUserDataHost()Lorg/chromium/base/UserDataHost;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->USER_DATA_KEY:Ljava/lang/Class;

    new-instance v2, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/base/UserDataHost;->setUserData(Ljava/lang/Class;Lorg/chromium/base/UserData;)Lorg/chromium/base/UserData;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;

    :cond_1
    return-object v0
.end method

.method public static getForTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;
    .locals 1
    .param p0    # Lcom/sec/terrace/Terrace;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUserDataHost()Lorg/chromium/base/UserDataHost;

    move-result-object p0

    sget-object v0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->USER_DATA_KEY:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/chromium/base/UserDataHost;->getUserData(Ljava/lang/Class;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;

    return-object p0
.end method

.method public static onArticleExtractionFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p4, p0}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;->onExtractionFinished(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;->onExtractionFinished(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionResult;)V

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityObserver;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mNativeTerraceReadabilityController:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityControllerJni;->get()Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mNativeTerraceReadabilityController:J

    invoke-interface {v0, v4, v5}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;->destroy(J)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mNativeTerraceReadabilityController:J

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public extractArticle(Ljava/util/Map;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mNativeTerraceReadabilityController:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->convertMapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityControllerJni;->get()Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mNativeTerraceReadabilityController:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;->extractArticle(JLjava/lang/String;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V

    return-void
.end method

.method public getObserversForTesting()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityObserver;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mObservers:Ljava/util/List;

    return-object p0
.end method

.method public onReadabilityResult(Z)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityObserver;

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityObserver;->onReadabilityResult(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public runReadabilityDetection()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mNativeTerraceReadabilityController:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityControllerJni;->get()Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;->mNativeTerraceReadabilityController:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;->runReadabilityDetection(J)V

    return-void
.end method

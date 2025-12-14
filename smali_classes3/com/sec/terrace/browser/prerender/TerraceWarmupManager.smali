.class public final Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$Natives;
    }
.end annotation


# static fields
.field private static sTerraceWarmupManager:Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;


# instance fields
.field private final mDnsRequestsInFlight:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

.field private mPrerenderIsAllowed:Z

.field private mPrerendered:Z

.field private mPrerenderedTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mPrerenderIsAllowed:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mDnsRequestsInFlight:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mDnsRequestsInFlight:Ljava/util/Set;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->sTerraceWarmupManager:Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;

    invoke-direct {v0}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->sTerraceWarmupManager:Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->sTerraceWarmupManager:Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;

    return-object v0
.end method

.method public static warmUp(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content_public/browser/ChildProcessLauncherHelper;->warmUpOnAnyThread(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cancelCurrentPrerender()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->clearTerraceIfNecessary()V

    iget-object p0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceExternalPrerenderHandler;->cancelCurrentPrerender()V

    return-void
.end method

.method public clearTerraceIfNecessary()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mPrerendered:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mPrerenderedTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mPrerenderedTerrace:Lcom/sec/terrace/Terrace;

    return-void
.end method

.method public disallowPrerendering()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mPrerenderIsAllowed:Z

    invoke-virtual {p0}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->cancelCurrentPrerender()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

    return-void
.end method

.method public maybePreconnectUrlAndSubResources(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->mDnsRequestsInFlight:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManagerJni;->get()Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$Natives;->preconnectUrlAndSubresources(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

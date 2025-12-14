.class public Lcom/sec/terrace/TerraceExternalPrerenderHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceExternalPrerenderHandler$Natives;
    }
.end annotation


# instance fields
.field private mNativeTinExternalPrerenderHandler:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceExternalPrerenderHandlerJni;->get()Lcom/sec/terrace/TerraceExternalPrerenderHandler$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/TerraceExternalPrerenderHandler$Natives;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/TerraceExternalPrerenderHandler;->mNativeTinExternalPrerenderHandler:J

    return-void
.end method


# virtual methods
.method public addPrerender(Ljava/lang/String;Ljava/lang/String;II)Lcom/sec/terrace/Terrace;
    .locals 9

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->createTerrace(Z)Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceExternalPrerenderHandlerJni;->get()Lcom/sec/terrace/TerraceExternalPrerenderHandler$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/TerraceExternalPrerenderHandler;->mNativeTinExternalPrerenderHandler:J

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/TerraceExternalPrerenderHandler$Natives;->addPrerender(JLorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->close()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public cancelCurrentPrerender()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceExternalPrerenderHandlerJni;->get()Lcom/sec/terrace/TerraceExternalPrerenderHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceExternalPrerenderHandler;->mNativeTinExternalPrerenderHandler:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/TerraceExternalPrerenderHandler$Natives;->cancelCurrentPrerender(J)V

    return-void
.end method

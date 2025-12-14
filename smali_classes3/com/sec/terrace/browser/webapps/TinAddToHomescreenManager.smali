.class public Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager$Natives;
    }
.end annotation


# instance fields
.field private mNativeTinAddToHomescreenManager:J

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;->mNativeTinAddToHomescreenManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManagerJni;->get()Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;->mNativeTinAddToHomescreenManager:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager$Natives;->destroy(JLcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;->mNativeTinAddToHomescreenManager:J

    return-void
.end method

.method public start(II)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManagerJni;->get()Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager$Natives;->initializeAndStart(Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;Lorg/chromium/content_public/browser/WebContents;II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;->mNativeTinAddToHomescreenManager:J

    return-void
.end method

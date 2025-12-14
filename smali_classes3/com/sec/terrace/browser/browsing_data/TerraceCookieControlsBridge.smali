.class public Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;,
        Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$Natives;,
        Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$CookieDataClearedCallback;
    }
.end annotation


# instance fields
.field private mNativeTerraceCookieControlsBridge:J

.field private final mObserver:Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;->mObserver:Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;

    invoke-static {p2}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridgeJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$Natives;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$Natives;->init(Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;->mNativeTerraceCookieControlsBridge:J

    return-void
.end method

.method private onCookiesCountChanged(I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;->mObserver:Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;->onCookiesCountChanged(I)V

    return-void
.end method


# virtual methods
.method public clearCookiesData(Ljava/lang/String;ZLcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$CookieDataClearedCallback;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridge;->clearSiteData(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridgeJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$Natives;

    move-result-object p2

    iget-wide v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;->mNativeTerraceCookieControlsBridge:J

    invoke-interface {p2, v0, v1, p1, p3}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$Natives;->clearCookiesForOrigin(JLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;->mNativeTerraceCookieControlsBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridgeJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;->mNativeTerraceCookieControlsBridge:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$Natives;->destroy(JLcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;->mNativeTerraceCookieControlsBridge:J

    :cond_0
    return-void
.end method

.class public Lcom/sec/terrace/TerraceState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceState$Natives;,
        Lcom/sec/terrace/TerraceState$WebContentsState;,
        Lcom/sec/terrace/TerraceState$WebContentsStateNative;
    }
.end annotation


# instance fields
.field public contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

.field public mIsIncognito:Z

.field public openerAppId:Ljava/lang/String;

.field public parentId:I

.field public shouldPreserve:Z

.field public syncId:J

.field public timestampMillis:J

.field public zoomValue:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/terrace/TerraceState;->parentId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/terrace/TerraceState;->timestampMillis:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/sec/terrace/TerraceState;->zoomValue:D

    return-void
.end method

.method public static getContentsStateAsByteBuffer(Lcom/sec/terrace/Terrace;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceStateJni;->get()Lcom/sec/terrace/TerraceState$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceState$Natives;->getContentsStateAsByteBuffer(Lorg/chromium/content_public/browser/WebContents;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstPageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceState;->supportUnifiedHomePageForUSA()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://news.internet.apps.samsung.com/qa.html"

    return-object v0

    :cond_0
    const-string v0, "chrome-native://newtab/"

    return-object v0
.end method

.method private static isDeprecatedFirstPageUrl(Ljava/lang/String;)Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "chrome://newtab/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "internet://newtab/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/sec/terrace/TerraceState;->supportUnifiedHomePageForUSA()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "chrome-native://newtab/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static restoreFromBundle(Landroid/os/Bundle;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->getInstance()Lcom/sec/terrace/browser/crypto/TinCipherFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->restoreFromBundle(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static saveToBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->getInstance()Lcom/sec/terrace/browser/crypto/TinCipherFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->saveToBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method private static supportUnifiedHomePageForUSA()Z
    .locals 1

    const-string v0, "enable-unified-home-page-for-usa"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDisplayTitleFromState()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceStateJni;->get()Lcom/sec/terrace/TerraceState$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-virtual {v1}, Lcom/sec/terrace/TerraceState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceState$WebContentsState;->version()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/sec/terrace/TerraceState$Natives;->getDisplayTitleFromByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isIncognito()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/TerraceState;->mIsIncognito:Z

    return p0
.end method

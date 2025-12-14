.class public Lcom/sec/terrace/TerraceState$WebContentsState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/TerraceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebContentsState"
.end annotation


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private mVersion:I

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public buffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getFirstCommittedUrl(Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceState$WebContentsState;->getWebContents(Z)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/chromium/content_public/browser/NavigationController;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationEntry;->getOriginalUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getWebContents(Z)Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceState$WebContentsState;->restoreContentsFromByteBuffer(Z)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasNavigationHistory(Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceState$WebContentsState;->getWebContents(Z)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method public restoreContentsFromByteBuffer(Z)Lorg/chromium/content_public/browser/WebContents;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceStateJni;->get()Lcom/sec/terrace/TerraceState$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mVersion:I

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/terrace/TerraceState$Natives;->restoreContentsFromByteBuffer(Ljava/nio/ByteBuffer;IZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    iget v1, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mVersion:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceStateJni;->get()Lcom/sec/terrace/TerraceState$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/terrace/TerraceState$Natives;->restoreContentsFromByteBuffer(Ljava/nio/ByteBuffer;IZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mVersion:I

    return-void
.end method

.method public version()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/TerraceState$WebContentsState;->mVersion:I

    return p0
.end method

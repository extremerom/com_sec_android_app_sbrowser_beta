.class Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;
.super Lorg/chromium/components/download/DownloadDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->setDownloadDelegate(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

.field final synthetic val$terraceDownloadDelegate:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;->this$0:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    iput-object p2, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;->val$terraceDownloadDelegate:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;

    invoke-direct {p0}, Lorg/chromium/components/download/DownloadDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;->val$terraceDownloadDelegate:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isDownloadOnSDCard(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;->val$terraceDownloadDelegate:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;->isDownloadOnSDCard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public parseOriginalUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;->val$terraceDownloadDelegate:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;->parseOriginalUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;->val$terraceDownloadDelegate:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePendingMediaItem(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;->val$terraceDownloadDelegate:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;->updatePendingMediaItem(Landroid/net/Uri;)V

    return-void
.end method

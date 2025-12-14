.class Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->renameDownload(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

.field final synthetic val$callback:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$3;->this$0:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    iput-object p2, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$3;->val$callback:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$3;->val$callback:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;->onResult(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$3;->onResult(Ljava/lang/Integer;)V

    return-void
.end method

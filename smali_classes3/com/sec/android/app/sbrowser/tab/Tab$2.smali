.class Lcom/sec/android/app/sbrowser/tab/Tab$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper$TerraceDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab/Tab;->scanImages(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab/Tab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->d(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public getActiveTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->d(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->d(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->d(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isJavascriptEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->b(Lcom/sec/android/app/sbrowser/tab/Tab;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isLowEndDevice(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public requestDocumentDump()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/Tab$2;->this$0:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->d(Lcom/sec/android/app/sbrowser/tab/Tab;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->requestDocumentDump()V

    return-void
.end method

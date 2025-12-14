.class public final Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->createBitmapManagerCallback()Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;",
        "Ldb/r;",
        "onInitialized",
        "()V",
        "",
        "tabId",
        "onBitmapReceived",
        "(I)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "onThumbnailCreated",
        "(ILandroid/graphics/Bitmap;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReceived(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$getTabById(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$isValidTab(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->notifyBitmapReceived()V

    :cond_0
    return-void
.end method

.method public onInitialized()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$getListenerList$p(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler$EventListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler$EventListener;->onInitialized()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$getListenerList$p(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$getTabById(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerCallback$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$isValidTab(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->notifyThumbnailCreated(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

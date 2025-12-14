.class public final Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->createBitmapManagerDelegate()Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;",
        "isIncognitoTab",
        "",
        "tabId",
        "",
        "isNativePage",
        "isValidTab",
        "getUrl",
        "",
        "getCacheExcludedTabList",
        "",
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheExcludedTabList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$getMainViewInterface$p(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCacheExcludedTabList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$getTabById(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$isValidTab(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isIncognitoTab(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$getTabById(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$isValidTab(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativePage(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$getTabById(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$isValidTab(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidTab(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$getTabById(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;I)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$createBitmapManagerDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;->access$isValidTab(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result p0

    return p0
.end method

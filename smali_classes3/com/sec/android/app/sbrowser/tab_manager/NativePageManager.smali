.class Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIncognitoNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

.field private mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mIncognitoNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mIncognitoNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    :cond_1
    return-void
.end method

.method public clearNativePageMap(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroyNativePage()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory;->createNativePageForURL(Ljava/lang/String;Landroid/app/Activity;Z)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mIncognitoNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory;->createNativePageForURL(Ljava/lang/String;Landroid/app/Activity;Z)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mIncognitoNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mIncognitoNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->mIncognitoNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

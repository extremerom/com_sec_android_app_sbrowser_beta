.class Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->createSmartProtectChecker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$2;->this$0:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedEntryCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$2;->this$0:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->f(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getAddedEntryCount()I

    move-result p0

    return p0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$2;->this$0:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->f(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTabId()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$2;->this$0:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->g(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    return p0
.end method

.method public getTabVisibility()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$2;->this$0:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->g(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$2;->this$0:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->g(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.class Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper$1;
.super Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->updateAppState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$currentTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper$1;->val$currentTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateRequested()Ljava/lang/String;
    .locals 3

    const-string v0, "BixbyAppStateHelper"

    const-string v1, "updateStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper$1;->val$currentTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper$1;->val$currentTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper$1;->val$currentTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "{\"concepts\":[{\"type\":\"viv.samsungInternetApp.AppState\",\"values\":[\"Internet\"]}]}"

    return-object p0
.end method

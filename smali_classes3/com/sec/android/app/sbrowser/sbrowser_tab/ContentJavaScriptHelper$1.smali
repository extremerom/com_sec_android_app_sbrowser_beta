.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterEditMode()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->enterEditMode(ZZ)V

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p0

    return p0
.end method

.method public isIncognitoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;->getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    return p0
.end method

.method public loadJavaScriptUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->loadJavaScriptUrl(Ljava/lang/String;)V

    return-void
.end method

.method public readyToLoadJavaScript()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->handleDidFinishLoad()V

    return-void
.end method

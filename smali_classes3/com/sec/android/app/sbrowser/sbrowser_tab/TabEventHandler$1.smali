.class Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluateJavaScript(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/sec/android/app/sbrowser/sbrowser_tab/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;
.implements Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;
.implements Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus$Listener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->e(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;)Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->b(Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyPWAStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->c(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;)V

    return-void
.end method

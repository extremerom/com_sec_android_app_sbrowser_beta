.class public final synthetic Lcom/sec/android/app/sbrowser/tab_manager/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/AsyncSBrowserTabManager;-><init>()V

    return-object p0
.end method

.method public onBrowsingDataCleared()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->a()V

    return-void
.end method

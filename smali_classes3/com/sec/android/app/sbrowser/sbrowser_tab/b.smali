.class public final synthetic Lcom/sec/android/app/sbrowser/sbrowser_tab/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;
.implements Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/b;->a:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainViewLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/b;->a:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->b(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSBrowserTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/b;->a:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/main_view/H;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/H;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/H;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/H;->d:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/H;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/H;->d:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/H;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/H;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->i(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/H;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/H;->d:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/H;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

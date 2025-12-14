.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/h;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Landroid/content/Intent;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->a(Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->d(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->i(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Lcom/sec/android/app/sbrowser/main_view/IntentHandler$StartType;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/h;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

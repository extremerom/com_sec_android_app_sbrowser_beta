.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/base/Callback;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->c(Lorg/chromium/base/Callback;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->e(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->d(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Z)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;Z)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->k(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;Z)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Z)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;Z)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->c(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Z)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->n(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;Z)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->d(Ljava/lang/String;Z)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->b(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;Z)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->U(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Z)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

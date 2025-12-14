.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/a;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/a;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onNotification()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onExtension()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onRequestPcVersion()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onFindOnPage()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onContentBlocker()V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onNightMode()V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onSecretMode()V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onZoomInOut()V

    return-void

    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onShare()V

    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onAddTo()V

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onBrowsingAssistClicked()V

    return-void

    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onReadHighlightsAloudClicked()V

    return-void

    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onReadAloudClicked()V

    return-void

    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onSummaryClicked()V

    return-void

    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onCloseCurrentTab()V

    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onSavedPage()V

    return-void

    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onRefresh()V

    return-void

    :pswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onNewTab()V

    return-void

    :pswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onTextSize()V

    return-void

    :pswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onSearch()V

    return-void

    :pswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onTemporarilyAllowAds()V

    return-void

    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onCloseInternet()V

    return-void

    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onMore()V

    return-void

    :pswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onTab()V

    return-void

    :pswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onBookmark()V

    return-void

    :pswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onHome()V

    return-void

    :pswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onForward()V

    return-void

    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onHistory()V

    return-void

    :pswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onBackward()V

    return-void

    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onDownload()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

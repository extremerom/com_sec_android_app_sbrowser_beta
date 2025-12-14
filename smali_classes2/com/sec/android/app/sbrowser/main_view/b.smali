.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewMedia;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->setFocusToSummaryTitle()V

    return-void

    :pswitch_5
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;->a(Lcom/sec/android/app/sbrowser/main_view/MainActivityLoggingHelper;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabManager$1;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;)V

    return-void

    :pswitch_a
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;)V

    return-void

    :pswitch_b
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback$initTimer$1;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewBitmapManager$TimeoutBitmapCallback;)V

    return-void

    :pswitch_c
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->d(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/B;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/B;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMultiTabLaunched()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/B;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/B;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

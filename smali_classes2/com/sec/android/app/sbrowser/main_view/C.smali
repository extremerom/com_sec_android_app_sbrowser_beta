.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/C;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/C;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/C;->c:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/C;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/C;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/C;->c:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/C;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/C;->c:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

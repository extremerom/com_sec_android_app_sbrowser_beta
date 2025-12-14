.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/Y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/Y;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->a()V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->f()V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/MainViewWindow;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

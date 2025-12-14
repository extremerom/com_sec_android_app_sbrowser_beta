.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/M;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/M;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/M;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/M;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->o(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->finishEditMode()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

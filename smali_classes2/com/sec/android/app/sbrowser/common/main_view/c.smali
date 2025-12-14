.class public final synthetic Lcom/sec/android/app/sbrowser/common/main_view/c;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->c(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->a(Landroid/app/Activity;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->a(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

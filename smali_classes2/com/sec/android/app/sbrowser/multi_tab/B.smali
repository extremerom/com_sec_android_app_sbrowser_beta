.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/B;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/B;->b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/B;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/B;->b:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->w(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->q(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->s(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->r(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

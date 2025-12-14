.class public final synthetic Lcom/sec/android/app/sbrowser/common/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/widget/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/b;->b:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/widget/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/b;->b:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->a(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->b(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

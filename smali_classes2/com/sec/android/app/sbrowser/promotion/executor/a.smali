.class public final synthetic Lcom/sec/android/app/sbrowser/promotion/executor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/promotion/executor/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/a;->b:Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/a;->b:Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->c(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->a(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->b(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

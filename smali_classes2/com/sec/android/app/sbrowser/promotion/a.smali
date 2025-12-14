.class public final synthetic Lcom/sec/android/app/sbrowser/promotion/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/promotion/PromotionController$Condition;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/promotion/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;-><init>()V

    return-object p0
.end method

.method public satisfy(Ljava/lang/String;)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/promotion/a;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

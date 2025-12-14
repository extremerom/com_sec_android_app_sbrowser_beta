.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/m;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/m;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/m;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/m;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;->g(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;->k(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;->o(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;->j(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

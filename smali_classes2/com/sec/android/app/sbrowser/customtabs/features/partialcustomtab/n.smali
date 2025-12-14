.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/n;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/n;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/n;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/n;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;->g(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;->updatePosition()V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;->n(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->onCloseAnimationEnd()V

    return-void

    :pswitch_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;->i(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;)V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->updateShadowOffset()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

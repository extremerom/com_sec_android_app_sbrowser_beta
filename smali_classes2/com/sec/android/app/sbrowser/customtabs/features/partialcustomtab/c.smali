.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/c;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/c;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;->i(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;->m(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;->l(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;)V

    return-void

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;->j(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

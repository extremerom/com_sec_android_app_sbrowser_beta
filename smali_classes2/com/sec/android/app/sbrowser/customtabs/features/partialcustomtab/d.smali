.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/d;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/d;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;->k(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;->isFullHeight()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/g;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/g;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/g;->b:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->i(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->e(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

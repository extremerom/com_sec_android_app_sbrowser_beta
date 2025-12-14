.class public final synthetic Lcom/sec/android/app/sbrowser/externalnav/external_intents/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Intent;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/j;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/j;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/j;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/j;->b:Landroid/content/Intent;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;->a(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

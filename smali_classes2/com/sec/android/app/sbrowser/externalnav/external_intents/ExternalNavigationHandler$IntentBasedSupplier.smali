.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;
.super Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBasedSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final mIntent:Landroid/content/Intent;

.field private mIntentCopy:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;-><init>(Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public assertIntentMatches()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->mIntentCopy:Landroid/content/Intent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->mIntentCopy:Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->assertIntentMatches()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

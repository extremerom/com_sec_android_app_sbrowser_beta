.class public final synthetic Lcom/sec/android/app/sbrowser/externalnav/external_intents/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/i;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/i;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/i;->a:Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/i;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;->a(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

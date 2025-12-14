.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;
.super Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryIntentActivitiesSupplier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier<",
        "Ljava/util/List<",
        "Landroid/content/pm/ResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final mNonDefaultSupplier:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/i;

    invoke-direct {v0, p2, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/i;-><init>(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)V

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;-><init>(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;->mNonDefaultSupplier:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;

    return-void
.end method

.method public static synthetic a(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;->lambda$new$0(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->r(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIncludingNonDefaultResolveInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->assertIntentMatches()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;->mNonDefaultSupplier:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

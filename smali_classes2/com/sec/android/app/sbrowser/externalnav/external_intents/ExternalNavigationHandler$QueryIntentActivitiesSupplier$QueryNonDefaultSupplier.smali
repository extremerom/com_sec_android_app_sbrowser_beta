.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;
.super Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryNonDefaultSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier<",
        "Ljava/util/List<",
        "Landroid/content/pm/ResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Landroid/content/Intent;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;->this$1:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;

    new-instance p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/j;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/j;-><init>(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;-><init>(Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Intent;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier$QueryNonDefaultSupplier;->lambda$new$0(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/content/Intent;)Ljava/util/List;
    .locals 1

    const/16 v0, 0x40

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

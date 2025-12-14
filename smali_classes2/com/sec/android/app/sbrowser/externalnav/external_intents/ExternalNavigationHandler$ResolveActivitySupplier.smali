.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;
.super Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolveActivitySupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/j;-><init>(ILandroid/content/Intent;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;-><init>(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;->lambda$new$0(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 1

    const/high16 v0, 0x10000

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager$SizeStrategyCreator;
.implements Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$MaximizeButtonCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/i;->a:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createForType(ILcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Z)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/i;->a:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->g(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;ILcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Z)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    move-result-object p0

    return-object p0
.end method

.method public onClick()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/i;->a:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;->h(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;)Z

    move-result p0

    return p0
.end method

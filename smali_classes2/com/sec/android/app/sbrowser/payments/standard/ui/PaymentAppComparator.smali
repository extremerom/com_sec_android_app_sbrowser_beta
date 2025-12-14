.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    return-void
.end method

.method private static compareAppsByFrecency(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentPreferencesUtil;->getPaymentAppUseCount(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentPreferencesUtil;->getPaymentAppUseCount(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentPreferencesUtil;->getPaymentAppLastUseDate(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentPreferencesUtil;->getPaymentAppLastUseDate(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;->getFrecencyScore(IJ)D

    move-result-wide v0

    invoke-static {p1, v3, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;->getFrecencyScore(IJ)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static compareCompletablesByCompleteness(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;)I
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;->getCompletenessScore()I

    move-result p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;->getCompletenessScore()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static getFrecencyScore(IJ)D
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    div-long/2addr v0, p1

    const-wide/16 p1, 0x2

    add-long/2addr v0, p1

    long-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    neg-double p1, p1

    add-int/lit8 p0, p0, 0x2

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)I
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isAutofillInstrument()Z

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isAutofillInstrument()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;->compareCompletablesByCompleteness(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-boolean v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerName()Z

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerName()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_3
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerEmail()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerEmail()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-boolean p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerPhone()Z

    move-result p0

    if-eqz p0, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerPhone()Z

    move-result p0

    if-eqz p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    if-eq v0, v1, :cond_a

    sub-int/2addr v0, v1

    if-lez v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_a
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->canPreselect()Z

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->canPreselect()Z

    move-result v0

    sub-int/2addr p0, v0

    if-eqz p0, :cond_b

    return p0

    :cond_b
    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;->compareAppsByFrecency(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    check-cast p2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;->compare(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)I

    move-result p0

    return p0
.end method

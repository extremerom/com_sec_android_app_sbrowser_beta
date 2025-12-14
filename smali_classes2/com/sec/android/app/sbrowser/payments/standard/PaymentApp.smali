.class public abstract Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;,
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;,
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$PaymentRequestUpdateEventListener;
    }
.end annotation


# instance fields
.field protected mHaveRequestedAutofillData:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->lambda$abortPaymentApp$0(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;)V

    return-void
.end method

.method private static synthetic lambda$abortPaymentApp$0(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;->onInstrumentAbortResult(Z)V

    return-void
.end method


# virtual methods
.method public abortPaymentApp(Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/payments/standard/d;

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/d;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public accountBalance()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public canMakePayment()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canPreselect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract dismissInstrument()V
.end method

.method public getApplicationIdentifierToHide()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationIdentifiersThatHideThisApp()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getInstrumentMethodNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getPaymentAppType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handlesPayerEmail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handlesPayerName()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handlesPayerPhone()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handlesShippingAddress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invokePaymentApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;Ljava/util/List;Ljava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;Ljava/util/List;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;)V
    .locals 0
    .param p5    # [[B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;",
            ">;",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public isAutofillInstrument()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPreferred()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReadyForMicrotransaction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isServerAutofillInstrument()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isServerAutofillInstrumentReplacement()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isValidForPaymentMethodData(Ljava/lang/String;Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Z
    .locals 0
    .param p2    # Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getInstrumentMethodNames()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isWaitingForPaymentDetailsUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPaymentDetailsNotUpdated()V
    .locals 0

    return-void
.end method

.method public setHaveRequestedAutofillData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->mHaveRequestedAutofillData:Z

    return-void
.end method

.method public setModifiedTotal(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updatePromoMessage(Ljava/lang/String;)V

    return-void
.end method

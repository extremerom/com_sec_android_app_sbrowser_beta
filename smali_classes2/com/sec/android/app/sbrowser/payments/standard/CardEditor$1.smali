.class Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;ZLcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)I
    .locals 1

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->checkAddressCompletionStatus(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->checkAddressCompletionStatus(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)I

    move-result p2

    if-nez p2, :cond_1

    move p0, v0

    :cond_1
    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    check-cast p2, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$1;->compare(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)I

    move-result p0

    return p0
.end method

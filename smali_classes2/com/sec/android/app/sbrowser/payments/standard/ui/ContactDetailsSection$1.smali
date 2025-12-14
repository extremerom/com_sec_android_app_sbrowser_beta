.class Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;->createContactListFromAutofillProfiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)I
    .locals 0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getRelevanceScore()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getRelevanceScore()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    check-cast p2, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection$1;->compare(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)I

    move-result p0

    return p0
.end method

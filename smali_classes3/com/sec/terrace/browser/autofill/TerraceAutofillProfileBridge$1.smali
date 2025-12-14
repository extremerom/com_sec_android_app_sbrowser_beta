.class Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->getSupportedCountries()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Ljava/text/Collator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;)I
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$1;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :cond_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    check-cast p2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$1;->compare(Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;)I

    move-result p0

    return p0
.end method

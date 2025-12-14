.class public Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;,
        Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;,
        Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;,
        Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressField;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mCurrentBestLanguageCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->mCurrentBestLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultCountryCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRequiredAddressFields(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;->getRequiredFields(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static getSupportedCountries()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;->getSupportedCountries(Ljava/util/List;Ljava/util/List;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    new-instance v5, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-direct {v5, v6, v7}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/text/Collator;->setStrength(I)V

    new-instance v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$1;

    invoke-direct {v1, v0}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$1;-><init>(Ljava/text/Collator;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private static intArrayToList([ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static stringArrayToList([Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAddressUiComponents(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;->getAddressUiComponents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->mCurrentBestLanguageCode:Ljava/lang/String;

    const/4 p0, 0x0

    move p1, p0

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    new-instance p2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, p0

    :goto_1
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_2

    :cond_1
    move v3, p0

    :goto_2
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$AddressUiComponent;-><init>(ILjava/lang/String;ZZ)V

    invoke-virtual {v11, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v11
.end method

.method public getCurrentBestLanguageCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge;->mCurrentBestLanguageCode:Ljava/lang/String;

    return-object p0
.end method

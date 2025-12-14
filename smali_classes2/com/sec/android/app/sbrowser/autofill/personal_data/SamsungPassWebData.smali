.class Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillProfileBackend;
.implements Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardBackendInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;
    }
.end annotation


# static fields
.field private static final CARD_NETWORK_CONVERTING_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCardIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

.field private final mCardUri:Landroid/net/Uri;

.field private final mProfileIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

.field private final mProfileUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->CARD_NETWORK_CONVERTING_TABLE:Ljava/util/HashMap;

    const-string v1, "AMEX"

    const-string v2, "americanExpressCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DINERS"

    const-string v2, "dinersCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DISCOVER"

    const-string v2, "discoverCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ELO"

    const-string v2, "eloCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "JCB"

    const-string v2, "jcbCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MASTER"

    const-string v2, "masterCardCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VISA"

    const-string v2, "visaCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.samsung.android.samsungpass.autofillform/address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileUri:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.samsungpass.autofillform/creditcards"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardUri:Landroid/net/Uri;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;-><init>()V

    return-object v0
.end method

.method private convertPlatformCardNetwork(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->CARD_NETWORK_CONVERTING_TABLE:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "genericCC"

    :cond_0
    return-object p0
.end method

.method private ensureExpirationDate(I)Ljava/lang/String;
    .locals 0

    if-gez p1, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private getContentValues(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)Landroid/content/ContentValues;
    .locals 2

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->fullName:Ljava/lang/String;

    const-string v1, "full_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "email"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->email:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone_number"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->phone:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "company_name"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->companyName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "street_address"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->streetAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reserved_4"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->dependentLocality:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "city"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->city:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->state:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zipcode"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->zipCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reserved_5"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->sortingCode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country_code"

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->countryCode:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "date_modified"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method private getContentValues(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    const-string v2, "4222222222222"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->encrypt(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "card_number_encrypted"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigits:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigits:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "last_four_digit"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v1, "name_on_card"

    iget-object v3, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "expiration_month"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->twoDigitsExpirationYear:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->twoDigitsExpirationYear:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_6

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v1, "-1"

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "expiration_year"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_modified"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;->getPassId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "billing_address_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "reserved_5"

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNickName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;

    return-object v0
.end method


# virtual methods
.method public addAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;)V
    .locals 7

    const-string v0, "SamsungPassWebData"

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentValues(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    const-string p0, "addAutofillProfile(): Failed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;->call(Z)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->guid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;->setIds(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;->call(Z)V

    return-void

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "addAutofillProfile(): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;->call(Z)V

    return-void
.end method

.method public addCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 3

    const-string v0, "SamsungPassWebData"

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentValues(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    const-wide/16 v1, -0x1

    cmp-long p0, p0, v1

    if-nez p0, :cond_2

    const-string p0, "addCreditCard(): Failed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "addCreditCard(): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addPersonalDataWithOneTransaction([Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 10

    const-string v0, "com.samsung.android.samsungpass.autofillform"

    const-string v1, "SamsungPassWebData"

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    aget-object v8, p1, v6

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentValues(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v7, p1, v6

    iget-object v7, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->guid:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    move v3, v5

    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_5

    aget-object v6, p1, v3

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v6, :cond_4

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v6, v7, :cond_4

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    const-string v6, "addPersonalDataWithOneTransaction(): Migrate profile failed"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;->setIds(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addPersonalDataWithOneTransaction(): Migrate profiles "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    array-length v3, p2

    if-ge v5, v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    aget-object v4, p2, v5

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentValues(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :try_start_1
    invoke-virtual {v2, v0, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "addPersonalDataWithOneTransaction(): Migrate cards "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public clearAutofillProfiles()V
    .locals 0

    return-void
.end method

.method public clearCreditCards()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->clearCreditCards()V

    return-void
.end method

.method public decryptIfNeeded(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
    .locals 2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4222222222222"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->hasToken()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getEncryptedCardNumber(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->decrypt([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public getAutofillProfiles(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-array v0, v4, [Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

    invoke-interface {v1, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-nez v5, :cond_1

    new-array v0, v4, [Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

    invoke-interface {v1, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->start()V

    const-string v17, "country_code"

    const-string v18, "date_modified"

    const-string v6, "_id"

    const-string v7, "full_name"

    const-string v8, "email"

    const-string v9, "phone_number"

    const-string v10, "company_name"

    const-string v11, "street_address"

    const-string v12, "reserved_4"

    const-string v13, "city"

    const-string v14, "state"

    const-string v15, "zipcode"

    const-string v16, "reserved_5"

    filled-new-array/range {v6 .. v18}, [Ljava/lang/String;

    move-result-object v7

    :try_start_0
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileUri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;->wrap(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v5, v5, [Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v6, v4

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    new-instance v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

    invoke-direct {v7}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;-><init>()V

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;->getOrCreateGuid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->guid:Ljava/lang/String;

    iput-object v2, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->firstName:Ljava/lang/String;

    iput-object v2, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->middleName:Ljava/lang/String;

    iput-object v2, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->lastName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->fullName:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->email:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->phone:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->companyName:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->streetAddress:Ljava/lang/String;

    const/4 v8, 0x6

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->dependentLocality:Ljava/lang/String;

    const/4 v8, 0x7

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->city:Ljava/lang/String;

    const/16 v8, 0x8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->state:Ljava/lang/String;

    const/16 v8, 0x9

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->zipCode:Ljava/lang/String;

    const/16 v8, 0xa

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->sortingCode:Ljava/lang/String;

    const/16 v8, 0xb

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->countryCode:Ljava/lang/String;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v9, 0xc

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->modificationDate:J

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->useCount:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->useDateForSamsungPass:J

    const-string v8, "en-US"

    iput-object v8, v7, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->languageCode:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :cond_3
    invoke-interface {v1, v5}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_4
    :goto_1
    :try_start_3
    new-array v0, v4, [Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

    invoke-interface {v1, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    return-void

    :goto_2
    if-eqz v3, :cond_6

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    new-array v0, v4, [Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

    invoke-interface {v1, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)V

    :goto_4
    return-void
.end method

.method public getCreditCardStatusTable(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getCreditCardStatusTable(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;)V

    return-void
.end method

.method public getCreditCards(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V
    .locals 13

    const-string v0, ""

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array p0, v2, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_1

    new-array p0, v2, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->start()V

    const-string v11, "date_modified"

    const-string v12, "reserved_5"

    const-string v4, "_id"

    const-string v5, "name_on_card"

    const-string v6, "last_four_digit"

    const-string v7, "reserved_4"

    const-string v8, "expiration_month"

    const-string v9, "expiration_year"

    const-string v10, "billing_address_id"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;->wrap(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v1, v4, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v4, v2

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    new-instance v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-direct {v5}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;-><init>()V

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;->getOrCreateGuid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigits:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->convertPlatformCardNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNetwork:Ljava/lang/String;

    const-string v6, "4222222222222"

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->ensureExpirationDate(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->ensureExpirationDate(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    const/4 v7, 0x6

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;->getOrCreateGuid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v7, 0x7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->modificationDate:J

    const/16 v6, 0x8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNickName:Ljava/lang/String;

    iput-object v0, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->origin:Ljava/lang/String;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useCount:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useDateForSamsungPass:J

    iput-boolean v2, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->isVirtualCard:Z

    iput-object v0, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigitsOfPhysicalCard:Ljava/lang/String;

    iput-object v0, v5, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardArtUrl:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_1
    :try_start_3
    new-array p0, v2, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    return-void

    :goto_2
    if-eqz v3, :cond_6

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getCreditCards(): "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SamsungPassWebData"

    invoke-static {p0, v0, v3}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5
    if-nez v1, :cond_7

    new-array p0, v2, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void

    :cond_7
    invoke-interface {p1, v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method

.method public getEncryptedCardNumber(Ljava/lang/String;)[B
    .locals 8

    const-string v0, "_id="

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return-object v7

    :cond_0
    const-string v2, "card_number_encrypted"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;->getPassId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;->wrap(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v7

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getEncryptedCardNumber(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungPassWebData"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v7
.end method

.method public removeAutofillProfile(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;->call(Z)V

    return-void
.end method

.method public removeCreditCard(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCreditCardStatus(Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SecureWebData;->setCreditCardStatus(Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V

    return-void
.end method

.method public updateAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;)V
    .locals 7

    const-string v0, "SamsungPassWebData"

    const-string v1, "updateAutofillProfile(): updatedRowCount-"

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentValues(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "_id=?"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mProfileIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;->guid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;->getPassId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v4, v5, v6, p0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v3}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;->call(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-interface {p2, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;->call(Z)V

    return-void

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "updateAutofillProfile(): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v3}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;->call(Z)V

    return-void
.end method

.method public updateCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 6

    const-string v0, "SamsungPassWebData"

    const-string v1, "_id="

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getContentValues(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)Landroid/content/ContentValues;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->mCardIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData$IdMappingTable;->getPassId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v2, v3, v4, p0, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const-string p0, "updateCreditCard(): Operation Failed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "updateCreditCard(): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

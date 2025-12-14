.class Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData$IdMappingTable;
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

.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private final mCardIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData$IdMappingTable;

.field private mCvc:Ljava/lang/String;

.field private mPanDetailsReceived:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.samsung.android.spay.virtualcardautofill"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->CARD_NETWORK_CONVERTING_TABLE:Ljava/util/HashMap;

    const-string v1, "AX"

    const-string v2, "americanExpressCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DS"

    const-string v2, "discoverCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MC"

    const-string v2, "masterCardCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VI"

    const-string v2, "visaCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData$IdMappingTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData$IdMappingTable;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->mCardIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData$IdMappingTable;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->mCvc:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->mPanDetailsReceived:Z

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;-><init>()V

    return-object v0
.end method

.method private convertPlatformCardNetwork(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->CARD_NETWORK_CONVERTING_TABLE:Ljava/util/HashMap;

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

.method private getCardArtNext(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->getDigitalCardID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "VirtualCardAutofillCardArtImageUri"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "cardArtImageUri"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "SamsungWalletVirtualCardData"

    const-string v0, "Exception has occurred"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    return-object v1
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

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;

    return-object v0
.end method

.method private isPlatformSigned(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSamsungPayInstalled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.spay"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->isPlatformSigned(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public getDigitalCardID(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->mCardIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData$IdMappingTable;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData$IdMappingTable;->getPassId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualCreditCards(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V
    .locals 12

    const-string v0, ""

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->isSamsungPayInstalled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "SamsungWalletVirtualCardData"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "SamsungPay NOT Installed"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v3, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletBroadcastReceiver;->start()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->start()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p0, "ContentResolver is NULL"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "VirtualCardAutofillInfo"

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v4, v4, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    const-string v5, "cursor::getVirtualCreditCards: Virtual Cards has been fetched from DB."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    new-instance v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-direct {v6}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->mCardIdMappingTable:Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData$IdMappingTable;

    const-string v8, "digitalCardID"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData$IdMappingTable;->getOrCreateGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    const-string v7, "cardNetwork"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->convertPlatformCardNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNetwork:Ljava/lang/String;

    const-string v7, "cardHolderName"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->name:Ljava/lang/String;

    const-string v7, "expireDate"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x6

    const/4 v11, 0x4

    if-ne v8, v10, :cond_2

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v11, :cond_3

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object v8, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYear:Ljava/lang/String;

    iput-object v8, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationYearOfPhysicalCard:Ljava/lang/String;

    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonth:Ljava/lang/String;

    iput-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->expirationMonthOfPhysicalCard:Ljava/lang/String;

    const-string v7, "virtualCardLastFour"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigits:Ljava/lang/String;

    const-string v7, "cardLastFour"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->lastFourDigitsOfPhysicalCard:Ljava/lang/String;

    const-string v7, "4222222222222"

    iput-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardNumber:Ljava/lang/String;

    iput-object v0, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->origin:Ljava/lang/String;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->useCount:J

    iput-object v0, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->billingAddressId:Ljava/lang/String;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->isVirtualCard:Z

    iget-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->guid:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->getCardArtNext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;->cardArtUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1, v4}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    goto :goto_2

    :cond_5
    new-array p0, v3, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_7

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :goto_3
    if-eqz v1, :cond_6

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVirtualCreditCards: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-array p0, v3, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    :cond_7
    :goto_6
    return-void
.end method

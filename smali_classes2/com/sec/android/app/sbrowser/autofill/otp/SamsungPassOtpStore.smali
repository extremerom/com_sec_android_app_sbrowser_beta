.class Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;


# static fields
.field private static final URI:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.samsungpass.easysignin/easysignin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;-><init>()V

    return-object v0
.end method

.method private convertCursorToOtpForms(Landroid/database/Cursor;)[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;
    .locals 5
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SamsungPassOtpStore"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convertCursorToForms(): cursor.getCount() == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v2, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;

    invoke-direct {v2}, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iput v3, v2, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;->otpId:I

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;->usernameElement:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v2, "convertCursorToForms(): encryptedUsername is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;->usernameValue:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;->signonRealm:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;->origin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;

    return-object p0

    :cond_4
    :goto_1
    const-string p1, "convertCursorToForms(): Cursor is empty"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->createEmptyOtpForms()[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;

    move-result-object p0

    return-object p0
.end method

.method private createEmptyOtpForms()[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;

    return-object p0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/otp/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;

    return-object v0
.end method

.method private getProjectionForOtp()[Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v4, "host_url"

    const-string v5, "origin_url"

    const-string v0, "_id"

    const-string v1, "otp"

    const-string v2, "username_element"

    const-string v3, "username_value"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public fillOtpMatchingLogins(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpFormDigest;Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;)V
    .locals 9
    .param p1    # Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpFormDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "fillMatchingLogins(): forms.length == "

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v1

    const-string v2, "SamsungPassOtpStore"

    if-nez v1, :cond_0

    const-string p1, "fillMatchingLogins(): SamsungPass is NOT activated"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->createEmptyOtpForms()[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p1, "fillMatchingLogins(): ContentResolver is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->createEmptyOtpForms()[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V

    return-void

    :cond_1
    iget-object p1, p1, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpFormDigest;->signonRealm:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    :try_start_0
    sget-object v4, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->getProjectionForOtp()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "host_url = ?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->convertCursorToOtpForms(Landroid/database/Cursor;)[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fillMatchingLogins(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->createEmptyOtpForms()[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public getOtpForUser(I)Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->URI:Landroid/net/Uri;

    const-string v3, "getOtpCode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, p1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "otp_code"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;->simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail to query : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungPassOtpStore"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1
.end method

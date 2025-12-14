.class Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;


# static fields
.field private static final URI:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mCachedValueOfCmApiSupport:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.samsungpass.easysignin/easysignin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;-><init>()V

    return-object v0
.end method

.method private addLoginImpl(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getContentValues(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Landroid/content/ContentValues;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    sget-object p1, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, -0x1

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addLoginImpl(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungPassPasswordStore"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method private convertCursorToForms(Landroid/database/Cursor;)[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
    .locals 9
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SamsungPassPasswordStore"

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

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
    new-instance v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-direct {v2}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iput-boolean v4, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->blockedByUser:Z

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameElement:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_3

    iput-object v7, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    const-string v2, "convertCursorToForms(): encryptedUsername is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->decryptUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    :goto_1
    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordElement:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->isCmApiSupported()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v7, :cond_5

    move v3, v5

    :cond_5
    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->encodeBase64WithMagicString([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    :goto_2
    const-string v5, ""

    :goto_3
    iput-object v5, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordValue:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->origin:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->action:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->packageName:Ljava/lang/String;

    iput v6, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    const-wide/16 v5, 0x0

    iput-wide v5, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->dateCreated:J

    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->isCmApiSupported()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->updateCmApiSupportForForm(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;Z)V

    iget-object v4, v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->federationOrigin:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    const-string v2, "Using empty password is not allowed with empty federation url."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    return-object p0

    :cond_9
    :goto_5
    const-string p1, "convertCursorToForms(): Cursor is empty"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->createEmptyPasswordForms()[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    move-result-object p0

    return-object p0
.end method

.method private createActivateSamsungPassPasswordForms(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;)[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;->signonRealm:Ljava/lang/String;

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    const/16 p1, 0xff

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    return-object p0
.end method

.method private createEmptyPasswordForms()[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    return-object p0
.end method

.method private decryptUsername(Ljava/lang/String;)Ljava/lang/String;
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

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

.method private getContentValues(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Landroid/content/ContentValues;
    .locals 5
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->isFederatedForm(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convertToContentValue: isFederatedForm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungPassPasswordStore"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->isCmApiSupported()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "convertToContentValue: FederatedForm cannot be supported if Credential Management is not supproted"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    iget-boolean v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->blockedByUser:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v3

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "username_element"

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameElement:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "password_element"

    iget-object v4, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordElement:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->blockedByUser:Z

    const-string v4, "username_value"

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->encryptPassword(Ljava/lang/String;)[B

    move-result-object v3

    :goto_0
    const-string v2, "password_value"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->modifySignonRealmForSPass(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    :goto_2
    const-string v2, "host_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "origin_url"

    iget-object v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->origin:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_url"

    iget-object v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->action:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package_name"

    iget-object v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->blockedByUser:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "blacklisted_by_user"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "use_additional_auth"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ssl_valid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "preferred"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "source_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->isCmApiSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cm_api_support"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->makeCmApiSupportForContentValues(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/h;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    return-object v0
.end method

.method private getProjection()[Ljava/lang/String;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->isCmApiSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v8, "package_name"

    const-string v9, "cm_api_support"

    const-string v0, "blacklisted_by_user"

    const-string v1, "username_element"

    const-string v2, "username_value"

    const-string v3, "password_element"

    const-string v4, "password_value"

    const-string v5, "host_url"

    const-string v6, "origin_url"

    const-string v7, "action_url"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v7, "action_url"

    const-string v8, "package_name"

    const-string v0, "blacklisted_by_user"

    const-string v1, "username_element"

    const-string v2, "username_value"

    const-string v3, "password_element"

    const-string v4, "password_value"

    const-string v5, "host_url"

    const-string v6, "origin_url"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCmApiSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->mCachedValueOfCmApiSupport:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->updateAndGetCmApiSupportStatus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->mCachedValueOfCmApiSupport:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isFederatedForm(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Z
    .locals 0
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->federationOrigin:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordValue:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    const-string p1, "federation://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeCmApiSupportForContentValues(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "password_type"

    iget v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->type:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "display_name"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->displayName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "icon_url"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->iconUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "federation_url"

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->federationOrigin:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "skip_zero_click"

    iget-boolean p1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->skipZeroClick:Z

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "makeCmApiSupportForContentValues error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SamsungPassPasswordStore"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method private modifySignonRealmForBrowser(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getSanitizedUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "federation"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->federationOrigin:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "modifySignonRealmForBrowser originHostWithFederationScheme: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungPassPasswordStore"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "modifySignonRealmForBrowser federationHost: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private modifySignonRealmForSPass(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->origin:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getSanitizedUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    const-string v0, "federation"

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->getOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "modifySignonRealmForSPass scheme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SamsungPassPasswordStore"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "modifySignonRealmForSPass signonRealmWithOriginScheme: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "modifySignonRealmForSPass modifiedSigonRealmOrigin: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private shouldActivateSamsungPass(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "check_smart_switch_data_exists"

    const-string v1, "Samsung Pass have data from SmartSwitch::"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->forceSetSamrtSwitchDataAvailabeInSamsungPass()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    const-string v4, "SamsungPassPasswordStore"

    if-nez p0, :cond_1

    const-string p0, "ContentResolver is NULL"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    sget-object v5, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v0, p1, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail to query : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v4}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method private updateAndGetCmApiSupportStatus()Z
    .locals 8

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    sget-object v3, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :try_start_1
    const-string v0, "cm_api_support"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

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

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    return v0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updateAndGetCmApiSupportStatus: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SamsungPassPasswordStore"

    invoke-static {p0, v0, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method private updateCmApiSupportForForm(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "updateCmApiSupportForForm"

    const-string v1, "SamsungPassPasswordStore"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p0, "updateCmApiSupportForForm: value for cm_api_support is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "password_type"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->type:I

    const-string p2, "display_name"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->displayName:Ljava/lang/String;

    const-string p2, "icon_url"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->iconUrl:Ljava/lang/String;

    const-string p2, "federation_url"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->federationOrigin:Ljava/lang/String;

    const-string p2, "skip_zero_click"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->skipZeroClick:Z

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->modifySignonRealmForBrowser(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "updateCmApiSupportForForm error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->addLoginImpl(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;->call(Z)V

    return-void
.end method

.method public fillMatchingLogins(Ljava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;)V
    .locals 9
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "fillMatchingLogins(): forms.length == "

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v1

    const-string v2, "SamsungPassPasswordStore"

    if-nez v1, :cond_1

    const-string p1, "fillMatchingLogins(): SamsungPass is NOT activated"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;->signonRealm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->shouldActivateSamsungPass(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->createActivateSamsungPassPasswordForms(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;)[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->createEmptyPasswordForms()[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassActivateDialog;->showIfNeeded()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p1, "fillMatchingLogins(): ContentResolver is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->createEmptyPasswordForms()[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useQueryWithPslToSamsungPass()Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    if-eqz v1, :cond_4

    const-string v6, "host_url = ? OR host_url REGEXP ? "

    goto :goto_2

    :cond_4
    const-string v6, "host_url = ?"

    :goto_2
    if-eqz v1, :cond_5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object p2, p2, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;->signonRealm:Ljava/lang/String;

    aput-object p2, v1, v4

    aput-object p1, v1, v5

    move-object v7, v1

    goto :goto_3

    :cond_5
    new-array p1, v5, [Ljava/lang/String;

    iget-object p2, p2, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;->signonRealm:Ljava/lang/String;

    aput-object p2, p1, v4

    move-object v7, p1

    :goto_3
    :try_start_0
    sget-object v4, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getProjection()[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->convertCursorToForms(Landroid/database/Cursor;)[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_7

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "fillMatchingLogins(): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->createEmptyPasswordForms()[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    :cond_7
    :goto_6
    return-void
.end method

.method public hasLogin()Z
    .locals 8

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    sget-object v3, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hasLogin(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SamsungPassPasswordStore"

    invoke-static {p0, v0, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public isPasswordDifferent(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getContentValues(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Landroid/content/ContentValues;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "host_url"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "username_value"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "password_value"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :try_start_0
    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->URI:Landroid/net/Uri;

    const-string v2, "checkForPWUpdate"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "NEED_UPDATE"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail to query : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungPassPasswordStore"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;->call(Z)V

    return-void
.end method

.method public updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->addLoginImpl(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;->call(Z)V

    return-void
.end method

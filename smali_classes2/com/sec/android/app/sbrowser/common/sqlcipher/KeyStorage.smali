.class Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;->createSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private createSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    new-instance v0, Lo3/t;

    invoke-direct {v0, p0}, Lo3/t;-><init>(Landroid/content/Context;)V

    sget-object v1, LR2/h;->AES256_GCM:LR2/h;

    invoke-virtual {v0, v1}, Lo3/t;->n(LR2/h;)V

    invoke-virtual {v0}, Lo3/t;->b()LR2/i;

    move-result-object v0

    sget-object v1, LR2/d;->AES256_SIV:LR2/d;

    sget-object v2, LR2/e;->AES256_GCM:LR2/e;

    invoke-static {p0, v0, v1, v2}, LR2/f;->a(Landroid/content/Context;LR2/i;LR2/d;LR2/e;)LR2/f;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EncryptedSharedPreferences.create failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "KeyStorage"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "sqlcipher_key"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getKey(Ljava/lang/String;)[B
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public putKey(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

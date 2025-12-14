.class public Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mContext:Landroid/content/Context;

    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mPasswordMaxLength:I

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->getPasswordMinimumLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mPasswordMinLength:I

    return-void
.end method

.method private getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack trace:"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "PasswordValidator"

    const-string v2, "Can\'t get DevicePolicyManagerService: is it running?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method private getPasswordMinimumLength()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPasswordMaxLength()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mPasswordMaxLength:I

    return p0
.end method

.method public getPasswordMinLength()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mPasswordMinLength:I

    return p0
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mPasswordMinLength:I

    if-ge v0, v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1406a3

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->mPasswordMaxLength:I

    if-le v0, v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1406a0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_5

    const/16 v4, 0x7f

    if-le v3, v4, :cond_2

    goto :goto_3

    :cond_2
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, 0x61

    if-lt v3, v4, :cond_4

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    const p1, 0x7f14069d

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-nez v2, :cond_7

    const p1, 0x7f1406a6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

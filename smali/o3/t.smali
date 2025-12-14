.class public Lo3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE0/c;
.implements LJ4/b;
.implements LQ6/c;
.implements LJa/a;
.implements LT4/f;
.implements LZ3/y;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LJb/j;Ljava/util/List;Lo3/t;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lo3/t;->a:I

    const-string v0, "classifierDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/t;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo3/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LN0/i;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    new-instance v0, LO0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo3/t;->c:Ljava/lang/Object;

    iput-object p1, p0, Lo3/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LP9/a;LG6/f;Landroid/app/Application;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/t;->d:Ljava/lang/Object;

    iput-object p2, p0, Lo3/t;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo3/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LRd/n;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    iput-object v0, p0, Lo3/t;->c:Ljava/lang/Object;

    iput-object p1, p0, Lo3/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LS3/p;Lh4/j;LS3/t;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/t;->d:Ljava/lang/Object;

    iput-object p2, p0, Lo3/t;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo3/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lac/f;Lo3/f;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/t;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lo3/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const-string p1, "_androidx_security_master_key_"

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    new-instance v0, Lo3/b;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lo3/b;-><init>(LJ2/U;I)V

    iput-object v0, p0, Lo3/t;->c:Ljava/lang/Object;

    new-instance v0, Lo3/h;

    const/16 v1, 0x14

    invoke-direct {v0, p1, v1}, Lo3/h;-><init>(LJ2/U;I)V

    iput-object v0, p0, Lo3/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lic/a;Ljava/util/ArrayList;LT3/f;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lo3/t;->c:Ljava/lang/Object;

    invoke-static {p2, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo3/t;->d:Ljava/lang/Object;

    new-instance p2, Lcom/bumptech/glide/load/data/h;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/data/h;-><init>(Ljava/io/InputStream;LT3/f;)V

    iput-object p2, p0, Lo3/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    iput-object p1, p0, Lo3/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lo3/t;->a:I

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo3/t;->c:Ljava/lang/Object;

    iput-object p4, p0, Lo3/t;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 1

    iput p2, p0, Lo3/t;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lo3/t;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lo3/t;-><init>(I)V

    iput-object p2, p0, Lo3/t;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo3/t;->d:Ljava/lang/Object;

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lo3/t;

    const/4 v0, 0x6

    invoke-direct {p2, v0}, Lo3/t;-><init>(I)V

    iput-object p2, p0, Lo3/t;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo3/t;->d:Ljava/lang/Object;

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x3

    iput v0, p0, Lo3/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/t;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo3/t;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG3/h;

    iget-object v2, v2, LG3/h;->b:LF3/a;

    new-instance v3, LC3/n;

    iget-object v2, v2, LF3/f;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-direct {v3, v2}, LC3/n;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG3/h;

    iget-object v1, v1, LG3/h;->c:LF3/a;

    iget-object v2, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, LF3/a;->f0()LC3/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lo3/i;LVb/e;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Lo3/t;->a:I

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/t;->c:Ljava/lang/Object;

    new-instance p1, LXb/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, LL8/a;

    invoke-direct {p2, p1}, LL8/a;-><init>(LXb/f;)V

    iput-object p2, p0, Lo3/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz7/d;LE0/a;)V
    .locals 3

    const/4 p1, 0x4

    iput p1, p0, Lo3/t;->a:I

    sget-object p1, LE0/d;->a:Lcom/google/android/gms/internal/auth/j;

    new-instance p2, LE0/f;

    sget-object v0, LE0/d;->a:Lcom/google/android/gms/internal/auth/j;

    sget-object v0, Lib/i;->a:Lib/i;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    sget-object v1, LG0/a;->a:LNc/w0;

    sget-object v2, LE0/f;->a:LE0/e;

    invoke-interface {v2, v1}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v0

    new-instance v1, LNc/E0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LNc/m0;-><init>(LNc/j0;)V

    invoke-interface {v0, v1}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v0

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    new-instance v0, LF6/e;

    invoke-direct {v0}, LF6/e;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/t;->c:Ljava/lang/Object;

    iput-object v0, p0, Lo3/t;->d:Ljava/lang/Object;

    new-instance p1, LB0/a;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lzb/d;[Ljava/util/List;Ljava/lang/reflect/Method;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lo3/t;->a:I

    const-string v0, "argumentRange"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/t;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo3/t;->d:Ljava/lang/Object;

    return-void
.end method

.method private final p()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 3

    sget v0, Lcom/google/android/gms/internal/auth/D;->b:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.auth.IAuthManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/auth/N;

    if-eqz v2, :cond_1

    move-object p1, v1

    check-cast p1, Lcom/google/android/gms/internal/auth/N;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/auth/o;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/auth/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p1, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/d;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/auth/d;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p0, 0x5

    invoke-virtual {p1, p0, v0}, LD5/a;->B0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/auth/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    if-eqz p1, :cond_2

    invoke-static {p1}, LT4/b;->e(Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Service call returned null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()LR2/i;
    .locals 6

    iget-object v0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v0, LR2/h;

    if-nez v0, :cond_1

    iget-object v1, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "build() called before setKeyGenParameterSpec or setKeyScheme."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v1, LR2/h;->AES256_GCM:LR2/h;

    const/16 v2, 0x100

    const-string v3, "NoPadding"

    const-string v4, "GCM"

    const/4 v5, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v1, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lo3/t;->c:Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_a

    sget v1, LR2/j;->a:I

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v1

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "per-operation authentication is not supported (UserAuthenticationValidityDurationSeconds must be >0)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :try_start_0
    const-string v1, "AES"

    invoke-static {v1, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LR2/i;

    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-direct {v1, p0, v0}, LR2/i;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid padding mode, want NoPadding got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid purposes mode, want PURPOSE_ENCRYPT | PURPOSE_DECRYPT got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid block mode, want GCM got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid key size, want 256 bits got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bits"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "KeyGenParameterSpec was null after build() check"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(LPb/p;LXb/a;Lyc/A;)Lyc/A;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    iget-object v2, v6, Lo3/t;->b:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lo3/i;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual/range {p3 .. p3}, Lyc/w;->E0()Lyc/H;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v10, v3

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v3, LVb/c;

    invoke-direct {v3, v9, v7, v2}, LVb/c;-><init>(Lo3/i;LYb/b;Z)V

    invoke-static {v3}, Lyc/c;->C(LKb/h;)Lyc/H;

    move-result-object v3

    goto :goto_0

    :goto_2
    iget-object v3, v7, LPb/p;->b:LPb/r;

    const-string v4, "Type not found: "

    if-eqz v3, :cond_29

    instance-of v5, v3, LPb/n;

    const-class v11, Ljava/lang/Object;

    const-string v12, "getUpperBounds(...)"

    iget-object v14, v8, LXb/a;->a:Lyc/Z;

    iget-object v15, v8, LXb/a;->b:LXb/b;

    iget-boolean v13, v8, LXb/a;->d:Z

    const-string v1, "getParameters(...)"

    if-eqz v5, :cond_e

    move-object v5, v3

    check-cast v5, LPb/n;

    invoke-virtual {v5}, LPb/n;->c()Lhc/c;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz v13, :cond_4

    sget-object v3, LXb/d;->a:Lhc/c;

    invoke-virtual {v2, v3}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, v9, Lo3/i;->a:Ljava/lang/Object;

    check-cast v2, LVb/a;

    iget-object v2, v2, LVb/a;->p:LGb/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, LGb/o;->e:[LAb/u;

    const/16 v16, 0x0

    aget-object v3, v3, v16

    move-object/from16 v17, v10

    iget-object v10, v2, LGb/o;->c:LGb/n;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "property"

    invoke-static {v3, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, LAb/b;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LG5/B2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    iget-object v10, v2, LGb/o;->b:Ljava/lang/Object;

    invoke-interface {v10}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrc/o;

    sget-object v8, LRb/c;->FROM_REFLECTION:LRb/c;

    invoke-interface {v10, v3, v8}, Lrc/q;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object v8

    instance-of v10, v8, LJb/f;

    if-eqz v10, :cond_2

    check-cast v8, LJb/f;

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_3

    new-instance v8, Lhc/b;

    sget-object v10, LGb/q;->i:Lhc/c;

    invoke-direct {v8, v10, v3}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v2, v2, LGb/o;->a:Lcom/google/firebase/messaging/q;

    invoke-virtual {v2, v8, v3}, Lcom/google/firebase/messaging/q;->d(Lhc/b;Ljava/util/List;)LJb/f;

    move-result-object v2

    goto/16 :goto_6

    :cond_3
    move-object v2, v8

    goto/16 :goto_6

    :cond_4
    move-object/from16 v17, v10

    iget-object v3, v9, Lo3/i;->a:Ljava/lang/Object;

    check-cast v3, LVb/a;

    iget-object v3, v3, LVb/a;->o:LMb/B;

    iget-object v3, v3, LMb/B;->e:LGb/i;

    invoke-static {v2, v3}, LIb/e;->c(Lhc/c;LGb/i;)LJb/f;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_5
    sget-object v3, LIb/d;->a:Ljava/lang/String;

    invoke-static {v2}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object v3

    sget-object v8, LIb/d;->k:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, LXb/b;->FLEXIBLE_LOWER_BOUND:LXb/b;

    if-eq v15, v3, :cond_8

    sget-object v3, Lyc/Z;->SUPERTYPE:Lyc/Z;

    if-eq v14, v3, :cond_8

    invoke-virtual/range {p1 .. p1}, LPb/p;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LYb/d;

    instance-of v10, v3, LPb/D;

    if-eqz v10, :cond_6

    check-cast v3, LPb/D;

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_9

    invoke-virtual {v3}, LPb/D;->c()LPb/A;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v3, v3, LPb/D;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lfb/l;->s([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v11}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object v3

    sget-object v10, LIb/d;->a:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhc/c;

    if-eqz v3, :cond_7

    invoke-static {v2}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object v8

    invoke-virtual {v8, v3}, LGb/i;->j(Lhc/c;)LJb/f;

    move-result-object v3

    invoke-interface {v3}, LJb/i;->w()Lyc/L;

    move-result-object v3

    invoke-interface {v3}, Lyc/L;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJb/W;

    if-eqz v3, :cond_9

    invoke-interface {v3}, LJb/W;->A()Lyc/e0;

    move-result-object v3

    if-eqz v3, :cond_9

    sget-object v8, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    if-eq v3, v8, :cond_9

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Given class "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a read-only collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    invoke-static {v2}, LIb/e;->a(LJb/f;)LJb/f;

    move-result-object v2

    :cond_9
    :goto_6
    if-nez v2, :cond_b

    iget-object v2, v9, Lo3/i;->a:Ljava/lang/Object;

    check-cast v2, LVb/a;

    iget-object v2, v2, LVb/a;->k:Lo3/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lo3/f;->b:Ljava/lang/Object;

    check-cast v2, LX4/i;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v5}, LX4/i;->m(LPb/n;)LJb/f;

    move-result-object v2

    goto :goto_7

    :cond_a
    const-string v0, "resolver"

    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    invoke-interface {v2}, LJb/i;->w()Lyc/L;

    move-result-object v2

    if-eqz v2, :cond_c

    :goto_8
    move-object v8, v2

    goto :goto_9

    :cond_c
    new-instance v0, Lhc/c;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, LPb/p;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class type should have a FQ name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_e
    move-object/from16 v17, v10

    instance-of v2, v3, LPb/B;

    if-eqz v2, :cond_28

    iget-object v2, v6, Lo3/t;->c:Ljava/lang/Object;

    check-cast v2, LVb/e;

    check-cast v3, LPb/B;

    invoke-interface {v2, v3}, LVb/e;->a(LPb/B;)LJb/W;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, LJb/i;->w()Lyc/L;

    move-result-object v2

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :goto_9
    if-nez v8, :cond_10

    const/4 v2, 0x0

    return-object v2

    :cond_10
    sget-object v2, LXb/b;->FLEXIBLE_LOWER_BOUND:LXb/b;

    if-ne v15, v2, :cond_11

    const/4 v10, 0x0

    goto :goto_b

    :cond_11
    if-nez v13, :cond_12

    sget-object v2, Lyc/Z;->SUPERTYPE:Lyc/Z;

    if-eq v14, v2, :cond_12

    const/4 v2, 0x1

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    :goto_a
    move v10, v2

    :goto_b
    if-eqz v0, :cond_13

    invoke-virtual/range {p3 .. p3}, Lyc/w;->F0()Lyc/L;

    move-result-object v2

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    :goto_c
    invoke-static {v2, v8}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, LPb/p;->d()Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v10, :cond_14

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-virtual/range {p1 .. p1}, LPb/p;->d()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual/range {p1 .. p1}, LPb/p;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v8}, Lyc/L;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-interface {v8}, Lyc/L;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    if-eqz v0, :cond_19

    check-cast v2, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, LJb/W;

    move-object/from16 v14, p2

    iget-object v0, v14, LXb/a;->e:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v13, v1, v0}, LG5/B;->h(LJb/W;Lyc/L;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {v13, v14}, Lyc/b0;->k(LJb/W;LXb/a;)Lyc/Q;

    move-result-object v0

    move-object/from16 p3, v12

    goto :goto_10

    :cond_17
    new-instance v15, Lyc/y;

    iget-object v0, v9, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v5, v0, LVb/a;->a:Lxc/l;

    new-instance v4, LXb/c;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 p3, v12

    move-object v12, v4

    move-object v4, v8

    move-object v14, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, LXb/c;-><init>(Lo3/t;LJb/W;LXb/a;Lyc/L;LPb/p;)V

    invoke-direct {v15, v14, v12}, Lyc/y;-><init>(Lxc/l;Lsb/a;)V

    invoke-virtual/range {p1 .. p1}, LPb/p;->d()Z

    move-result v2

    const/4 v1, 0x0

    const/16 v5, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v5}, LXb/a;->a(LXb/a;LXb/b;ZLjava/util/Set;Lyc/A;I)LXb/a;

    move-result-object v0

    iget-object v1, v6, Lo3/t;->d:Ljava/lang/Object;

    check-cast v1, LL8/a;

    invoke-static {v13, v0, v1, v15}, LXb/f;->a(LJb/W;LXb/a;LL8/a;Lyc/w;)Lyc/Q;

    move-result-object v0

    :goto_10
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p3

    goto :goto_f

    :cond_18
    :goto_11
    move-object/from16 v3, v17

    goto/16 :goto_1c

    :cond_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, LPb/p;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_1b

    check-cast v2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJb/W;

    new-instance v3, Lyc/F;

    sget-object v4, LAc/k;->MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER:LAc/k;

    invoke-interface {v2}, LJb/l;->getName()Lhc/f;

    move-result-object v2

    invoke-virtual {v2}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object v2

    invoke-direct {v3, v2}, Lyc/F;-><init>(Lyc/w;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1a
    invoke-static {v0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    goto :goto_11

    :cond_1b
    invoke-virtual/range {p1 .. p1}, LPb/p;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lfb/n;->m0(Ljava/lang/Iterable;)LJc/q;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, LJc/q;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    move-object v1, v0

    check-cast v1, LJc/c;

    iget-object v4, v1, LJc/c;->b:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v1}, LJc/c;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfb/z;

    iget-object v4, v1, Lfb/z;->b:Ljava/lang/Object;

    check-cast v4, LYb/d;

    invoke-interface {v2}, Ljava/util/List;->size()I

    iget v1, v1, Lfb/z;->a:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJb/W;

    sget-object v5, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v7, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v5, v13, v13, v14, v7}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v5

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    instance-of v13, v4, LPb/D;

    if-eqz v13, :cond_26

    check-cast v4, LPb/D;

    invoke-virtual {v4}, LPb/D;->c()LPb/A;

    move-result-object v13

    iget-object v14, v4, LPb/D;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {v14}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-static {v14, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lfb/l;->s([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v11}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    sget-object v14, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    goto :goto_14

    :cond_1c
    sget-object v14, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    :goto_14
    if-eqz v13, :cond_1e

    invoke-interface {v1}, LJb/W;->A()Lyc/e0;

    move-result-object v15

    sget-object v7, Lyc/e0;->INVARIANT:Lyc/e0;

    if-ne v15, v7, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-interface {v1}, LJb/W;->A()Lyc/e0;

    move-result-object v7

    if-eq v14, v7, :cond_1f

    :cond_1e
    move-object/from16 p2, v0

    move-object/from16 p3, v2

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1a

    :cond_1f
    :goto_15
    const-string v5, "c"

    invoke-static {v9, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "wildcardType"

    invoke-static {v4, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, LPb/D;->c()LPb/A;

    move-result-object v5

    if-eqz v5, :cond_25

    new-instance v5, LVb/c;

    const/4 v7, 0x0

    invoke-direct {v5, v9, v4, v7}, LVb/c;-><init>(Lo3/i;LYb/b;Z)V

    invoke-virtual {v5}, LVb/c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    move-object v5, v4

    check-cast v5, LJc/g;

    invoke-virtual {v5}, LJc/g;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v5}, LJc/g;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, LKb/b;

    sget-object v15, LSb/q;->b:[Lhc/c;

    move-object/from16 p2, v0

    array-length v0, v15

    move-object/from16 p3, v2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_21

    move/from16 v18, v0

    aget-object v0, v15, v2

    move-object/from16 v19, v4

    invoke-interface {v7}, LKb/b;->b()Lhc/c;

    move-result-object v4

    invoke-static {v4, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_18

    :cond_20
    const/4 v0, 0x1

    add-int/2addr v2, v0

    move/from16 v0, v18

    move-object/from16 v4, v19

    goto :goto_17

    :cond_21
    move-object/from16 v0, p2

    move-object/from16 v2, p3

    goto :goto_16

    :cond_22
    move-object/from16 p2, v0

    move-object/from16 p3, v2

    const/4 v0, 0x1

    const/4 v5, 0x0

    :goto_18
    check-cast v5, LKb/b;

    sget-object v2, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v4, 0x7

    const/4 v7, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v7, v7, v15, v4}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v2

    invoke-virtual {v6, v13, v2}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object v2

    if-eqz v5, :cond_24

    invoke-virtual {v2}, Lyc/w;->u()LKb/h;

    move-result-object v4

    invoke-static {v4, v5}, Lfb/n;->Q(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_23

    sget-object v4, LKb/g;->a:LKb/f;

    goto :goto_19

    :cond_23
    new-instance v5, LKb/i;

    invoke-direct {v5, v7, v4}, LKb/i;-><init>(ILjava/util/List;)V

    move-object v4, v5

    :goto_19
    invoke-static {v2, v4}, LG5/B;->k(Lyc/w;LKb/h;)Lyc/w;

    move-result-object v2

    :cond_24
    invoke-static {v2, v14, v1}, LG5/B;->d(Lyc/w;Lyc/e0;LJb/W;)Lyc/F;

    move-result-object v1

    goto :goto_1b

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nullability annotations on unbounded wildcards aren\'t supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1a
    invoke-static {v1, v5}, Lyc/b0;->k(LJb/W;LXb/a;)Lyc/Q;

    move-result-object v1

    goto :goto_1b

    :cond_26
    move-object/from16 p2, v0

    move-object/from16 p3, v2

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v15, 0x0

    new-instance v1, Lyc/F;

    sget-object v2, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {v6, v4, v5}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    :goto_1b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    goto/16 :goto_13

    :cond_27
    invoke-static {v3}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    goto/16 :goto_11

    :goto_1c
    invoke-static {v11, v3, v8, v10}, Lyc/c;->u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object v0

    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown classifier kind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Lhc/c;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, LPb/p;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, LQ6/c;

    invoke-interface {v0}, LQ6/c;->d()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v1, LQ6/c;

    invoke-interface {v1}, LQ6/c;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP6/c;

    iget-object p0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast p0, LO9/a;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, LI3/d;

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    new-instance v1, LP6/d;

    check-cast v0, LP6/g;

    invoke-direct {v1, v0, p0}, LP6/d;-><init>(LP6/g;Landroid/content/Context;)V

    return-object v1
.end method

.method public e(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lo3/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/data/h;

    iget-object p0, p0, Lcom/bumptech/glide/load/data/h;->b:Ljava/lang/Object;

    check-cast p0, LZ3/z;

    invoke-virtual {p0}, LZ3/z;->reset()V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0}, Ll4/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Ll4/a;

    invoke-direct {v0, p0}, Ll4/a;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public f()V
    .locals 1

    iget v0, p0, Lo3/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/data/h;

    iget-object p0, p0, Lcom/bumptech/glide/load/data/h;->b:Ljava/lang/Object;

    check-cast p0, LZ3/z;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZ3/z;->a:[B

    array-length v0, v0

    iput v0, p0, LZ3/z;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public g()I
    .locals 8

    iget v0, p0, Lo3/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/h;

    iget-object v0, v0, Lcom/bumptech/glide/load/data/h;->b:Ljava/lang/Object;

    check-cast v0, LZ3/z;

    invoke-virtual {v0}, LZ3/z;->reset()V

    iget-object v1, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, LT3/f;

    invoke-static {v1, v0, p0}, LG5/A;->d(Ljava/util/ArrayList;Ljava/io/InputStream;LT3/f;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ll4/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v1, LT3/f;

    const/4 v2, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LQ3/f;

    :try_start_0
    invoke-interface {v6, v0, v1}, LQ3/f;->a(Ljava/nio/ByteBuffer;LT3/f;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    if-eq v6, v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    throw p0

    :cond_2
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lo3/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, LO9/a;

    iget-object v0, v0, LO9/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v1, Lcb/a;

    invoke-interface {v1}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO4/d;

    iget-object p0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast p0, LR7/a;

    invoke-virtual {p0}, LR7/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LN4/b;

    new-instance v2, LN4/d;

    invoke-direct {v2, v0, v1, p0}, LN4/d;-><init>(Landroid/content/Context;LO4/d;LN4/b;)V

    return-object v2

    :pswitch_0
    new-instance v4, LO7/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, LF6/e;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, LA7/c;

    invoke-virtual {v0}, LA7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LM4/c;

    iget-object v0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v0, LD4/d;

    invoke-virtual {v0}, LD4/d;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LN4/k;

    iget-object p0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/q;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/q;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, LN4/l;

    new-instance p0, LH4/w;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, LH4/w;-><init>(LQ4/a;LQ4/a;LM4/c;LN4/k;LN4/l;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public h(LQd/n;LQd/n;)LQd/n;
    .locals 6

    iput-object p1, p0, Lo3/t;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lo3/t;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    move v1, p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_e

    instance-of v2, v0, LQd/n;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, LQd/n;

    iget-object v3, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v3, LRd/n;

    iget-object v4, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v4, LQd/n;

    invoke-virtual {v3, v4, v2}, LRd/n;->a(LQd/n;LQd/n;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p0, Lo3/t;->c:Ljava/lang/Object;

    sget-object v2, LRd/o;->STOP:LRd/o;

    goto :goto_1

    :cond_0
    sget-object v2, LRd/o;->CONTINUE:LRd/o;

    :goto_1
    sget-object v3, LRd/o;->STOP:LRd/o;

    if-ne v2, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v3, LRd/o;->CONTINUE:LRd/o;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, LQd/u;->g()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, LQd/u;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd/u;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v0}, LQd/u;->o()LQd/u;

    move-result-object v3

    if-nez v3, :cond_8

    if-gtz v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, LRd/o;->CONTINUE:LRd/o;

    if-eq v2, v3, :cond_4

    sget-object v4, LRd/o;->SKIP_CHILDREN:LRd/o;

    if-ne v2, v4, :cond_6

    :cond_4
    sget-object v2, LRd/o;->STOP:LRd/o;

    if-ne v3, v2, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, v3

    :cond_6
    iget-object v4, v0, LQd/u;->a:LQd/u;

    add-int/lit8 v1, v1, -0x1

    sget-object v5, LRd/o;->REMOVE:LRd/o;

    if-ne v2, v5, :cond_7

    invoke-virtual {v0}, LQd/u;->w()V

    :cond_7
    move-object v2, v3

    move-object v0, v4

    goto :goto_2

    :cond_8
    :goto_3
    sget-object v3, LRd/o;->CONTINUE:LRd/o;

    if-eq v2, v3, :cond_9

    sget-object v4, LRd/o;->SKIP_CHILDREN:LRd/o;

    if-ne v2, v4, :cond_b

    :cond_9
    sget-object v2, LRd/o;->STOP:LRd/o;

    if-ne v3, v2, :cond_a

    goto :goto_4

    :cond_a
    move-object v2, v3

    :cond_b
    if-ne v0, p2, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, LQd/u;->o()LQd/u;

    move-result-object v3

    sget-object v4, LRd/o;->REMOVE:LRd/o;

    if-ne v2, v4, :cond_d

    invoke-virtual {v0}, LQd/u;->w()V

    :cond_d
    move-object v0, v3

    goto :goto_0

    :cond_e
    :goto_4
    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, LQd/n;

    return-object p0
.end method

.method public i()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    iget v0, p0, Lo3/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/data/h;

    iget-object v0, v0, Lcom/bumptech/glide/load/data/h;->b:Ljava/lang/Object;

    check-cast v0, LZ3/z;

    invoke-virtual {v0}, LZ3/z;->reset()V

    iget-object v1, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, LT3/f;

    invoke-static {v1, v0, p0}, LG5/A;->e(Ljava/util/ArrayList;Ljava/io/InputStream;LT3/f;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ll4/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0, v0}, LG5/A;->f(Ljava/util/ArrayList;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public j([B)Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, LV6/k;

    invoke-direct {v0, p1}, LV6/k;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public k(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    sget-object v0, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, LJ2/d0;->l(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, LJ2/d0;->U(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, LJ2/U;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, LJ2/d0;->a()V

    return-object v1

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, LJ2/d0;->a()V

    throw p1
.end method

.method public l(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lo3/s;

    invoke-direct {v1, v0, p1}, Lo3/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {v0}, LJ2/U;->beginTransaction()V

    :try_start_0
    iget-object v2, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v2, Lo3/b;

    invoke-virtual {v2, v1}, Lo3/b;->x(Ljava/lang/Object;)V

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    throw p0

    :cond_0
    return-void
.end method

.method public m(LP0/i;LN0/h;I)Z
    .locals 5

    iget-object v0, p2, LN0/h;->N:[LN0/g;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, LO0/b;

    iput-object v2, p0, LO0/b;->a:LN0/g;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, p0, LO0/b;->b:LN0/g;

    invoke-virtual {p2}, LN0/h;->n()I

    move-result v0

    iput v0, p0, LO0/b;->c:I

    invoke-virtual {p2}, LN0/h;->k()I

    move-result v0

    iput v0, p0, LO0/b;->d:I

    iput-boolean v1, p0, LO0/b;->i:Z

    iput p3, p0, LO0/b;->j:I

    iget-object p3, p0, LO0/b;->a:LN0/g;

    sget-object v0, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne p3, v0, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iget-object v3, p0, LO0/b;->b:LN0/g;

    if-ne v3, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, LN0/h;->R:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_2

    move p3, v2

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-eqz v0, :cond_3

    iget v0, p2, LN0/h;->R:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    const/4 v3, 0x4

    iget-object v4, p2, LN0/h;->n:[I

    if-eqz p3, :cond_4

    aget p3, v4, v1

    if-ne p3, v3, :cond_4

    sget-object p3, LN0/g;->FIXED:LN0/g;

    iput-object p3, p0, LO0/b;->a:LN0/g;

    :cond_4
    if-eqz v0, :cond_5

    aget p3, v4, v2

    if-ne p3, v3, :cond_5

    sget-object p3, LN0/g;->FIXED:LN0/g;

    iput-object p3, p0, LO0/b;->b:LN0/g;

    :cond_5
    invoke-virtual {p1, p2, p0}, LP0/i;->b(LN0/h;LO0/b;)V

    iget p1, p0, LO0/b;->e:I

    invoke-virtual {p2, p1}, LN0/h;->H(I)V

    iget p1, p0, LO0/b;->f:I

    invoke-virtual {p2, p1}, LN0/h;->E(I)V

    iget-boolean p1, p0, LO0/b;->h:Z

    iput-boolean p1, p2, LN0/h;->y:Z

    iget p1, p0, LO0/b;->g:I

    invoke-virtual {p2, p1}, LN0/h;->B(I)V

    iput v1, p0, LO0/b;->j:I

    iget-boolean p0, p0, LO0/b;->i:Z

    return p0
.end method

.method public n(LR2/h;)V
    .locals 2

    sget-object v0, LR2/g;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v0, :cond_0

    iput-object p1, p0, Lo3/t;->d:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KeyScheme set after setting a KeyGenParamSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported scheme: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(LN0/i;II)V
    .locals 3

    iget v0, p1, LN0/h;->W:I

    iget v1, p1, LN0/h;->X:I

    const/4 v2, 0x0

    iput v2, p1, LN0/h;->W:I

    iput v2, p1, LN0/h;->X:I

    invoke-virtual {p1, p2}, LN0/h;->H(I)V

    invoke-virtual {p1, p3}, LN0/h;->E(I)V

    if-gez v0, :cond_0

    iput v2, p1, LN0/h;->W:I

    goto :goto_0

    :cond_0
    iput v0, p1, LN0/h;->W:I

    :goto_0
    if-gez v1, :cond_1

    iput v2, p1, LN0/h;->X:I

    goto :goto_1

    :cond_1
    iput v1, p1, LN0/h;->X:I

    :goto_1
    iget-object p0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast p0, LN0/i;

    invoke-virtual {p0}, LN0/i;->O()V

    return-void
.end method

.method public onFinish()I
    .locals 0

    iget p0, p0, Lo3/t;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public q(LPb/h;LXb/a;Z)Lyc/d0;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "arrayType"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, LPb/h;->b:LPb/A;

    instance-of v3, v2, LPb/y;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, LPb/y;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_2

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object v3, v3, LPb/y;->a:Ljava/lang/Class;

    invoke-static {v3, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpc/c;->d(Ljava/lang/String;)Lpc/c;

    move-result-object v3

    invoke-virtual {v3}, Lpc/c;->g()LGb/l;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v4

    :goto_2
    new-instance v5, LVb/c;

    iget-object v6, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v6, Lo3/i;

    invoke-direct {v5, v6, p1, v1}, LVb/c;-><init>(Lo3/i;LYb/b;Z)V

    iget-object p1, v6, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    iget-boolean p2, p2, LXb/a;->d:Z

    if-eqz v3, :cond_4

    iget-object p0, p1, LVb/a;->o:LMb/B;

    iget-object p0, p0, LMb/B;->e:LGb/i;

    invoke-virtual {p0, v3}, LGb/i;->r(LGb/l;)Lyc/A;

    move-result-object p0

    new-instance p1, LKb/i;

    invoke-virtual {p0}, Lyc/w;->u()LKb/h;

    move-result-object p3

    const/4 v2, 0x2

    new-array v2, v2, [LKb/h;

    aput-object p3, v2, v0

    aput-object v5, v2, v1

    invoke-direct {p1, v2}, LKb/i;-><init>([LKb/h;)V

    invoke-static {p0, p1}, LG5/B;->k(Lyc/w;LKb/h;)Lyc/w;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lyc/A;

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p1

    invoke-static {p0, p1}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_4
    sget-object v3, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v6, 0x6

    invoke-static {v3, p2, v0, v4, v6}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object p0

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    sget-object p2, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    goto :goto_4

    :cond_5
    sget-object p2, Lyc/e0;->INVARIANT:Lyc/e0;

    :goto_4
    iget-object p1, p1, LVb/a;->o:LMb/B;

    iget-object p1, p1, LMb/B;->e:LGb/i;

    invoke-virtual {p1, p2, p0, v5}, LGb/i;->h(Lyc/e0;Lyc/w;LKb/h;)Lyc/A;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p2, p1, LVb/a;->o:LMb/B;

    iget-object p2, p2, LMb/B;->e:LGb/i;

    sget-object p3, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {p2, p3, p0, v5}, LGb/i;->h(Lyc/e0;Lyc/w;LKb/h;)Lyc/A;

    move-result-object p2

    iget-object p1, p1, LVb/a;->o:LMb/B;

    iget-object p1, p1, LMb/B;->e:LGb/i;

    sget-object p3, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-virtual {p1, p3, p0, v5}, LGb/i;->h(Lyc/e0;Lyc/w;LKb/h;)Lyc/A;

    move-result-object p0

    invoke-virtual {p0, v1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p0

    invoke-static {p2, p0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public r(LYb/d;LXb/a;)Lyc/w;
    .locals 4

    instance-of v0, p1, LPb/y;

    const/4 v1, 0x0

    iget-object v2, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v2, Lo3/i;

    if-eqz v0, :cond_2

    check-cast p1, LPb/y;

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object p1, p1, LPb/y;->a:Ljava/lang/Class;

    invoke-static {p1, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpc/c;->d(Ljava/lang/String;)Lpc/c;

    move-result-object p0

    invoke-virtual {p0}, Lpc/c;->g()LGb/l;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->o:LMb/B;

    iget-object p0, p0, LMb/B;->e:LGb/i;

    invoke-virtual {p0, v1}, LGb/i;->t(LGb/l;)Lyc/A;

    move-result-object p0

    goto/16 :goto_2

    :cond_1
    iget-object p0, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->o:LMb/B;

    iget-object p0, p0, LMb/B;->e:LGb/i;

    invoke-virtual {p0}, LGb/i;->x()Lyc/A;

    move-result-object p0

    goto/16 :goto_2

    :cond_2
    instance-of v0, p1, LPb/p;

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    check-cast p1, LPb/p;

    iget-boolean v0, p2, LXb/a;->d:Z

    if-nez v0, :cond_3

    sget-object v0, Lyc/Z;->SUPERTYPE:Lyc/Z;

    iget-object v2, p2, LXb/a;->a:Lyc/Z;

    if-eq v2, v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {p1}, LPb/p;->d()Z

    move-result v0

    iget-object v2, p1, LPb/p;->a:Ljava/lang/reflect/Type;

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    invoke-virtual {p0, p1, p2, v1}, Lo3/t;->c(LPb/p;LXb/a;Lyc/A;)Lyc/A;

    move-result-object p0

    if-eqz p0, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object p0, LAc/k;->UNRESOLVED_JAVA_CLASS:LAc/k;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    goto/16 :goto_2

    :cond_5
    sget-object v3, LXb/b;->FLEXIBLE_LOWER_BOUND:LXb/b;

    invoke-virtual {p2, v3}, LXb/a;->b(LXb/b;)LXb/a;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v1}, Lo3/t;->c(LPb/p;LXb/a;Lyc/A;)Lyc/A;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object p0, LAc/k;->UNRESOLVED_JAVA_CLASS:LAc/k;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    goto :goto_2

    :cond_6
    sget-object v3, LXb/b;->FLEXIBLE_UPPER_BOUND:LXb/b;

    invoke-virtual {p2, v3}, LXb/a;->b(LXb/b;)LXb/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lo3/t;->c(LPb/p;LXb/a;Lyc/A;)Lyc/A;

    move-result-object p0

    if-nez p0, :cond_7

    sget-object p0, LAc/k;->UNRESOLVED_JAVA_CLASS:LAc/k;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    new-instance p1, LXb/j;

    invoke-direct {p1, v1, p0}, LXb/j;-><init>(Lyc/A;Lyc/A;)V

    goto :goto_1

    :cond_8
    invoke-static {v1, p0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p1

    :goto_1
    move-object p0, p1

    goto :goto_2

    :cond_9
    instance-of v0, p1, LPb/h;

    if-eqz v0, :cond_a

    check-cast p1, LPb/h;

    invoke-virtual {p0, p1, p2, v3}, Lo3/t;->q(LPb/h;LXb/a;Z)Lyc/d0;

    move-result-object p0

    goto :goto_2

    :cond_a
    instance-of v0, p1, LPb/D;

    if-eqz v0, :cond_c

    check-cast p1, LPb/D;

    invoke-virtual {p1}, LPb/D;->c()LPb/A;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1, p2}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object p0

    goto :goto_2

    :cond_b
    iget-object p0, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->o:LMb/B;

    iget-object p0, p0, LMb/B;->e:LGb/i;

    invoke-virtual {p0}, LGb/i;->n()Lyc/A;

    move-result-object p0

    goto :goto_2

    :cond_c
    if-nez p1, :cond_d

    iget-object p0, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->o:LMb/B;

    iget-object p0, p0, LMb/B;->e:LGb/i;

    invoke-virtual {p0}, LGb/i;->n()Lyc/A;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public run()V
    .locals 9

    iget v0, p0, Lo3/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;

    iget-object v1, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v1, LG6/f;

    :try_start_0
    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, LKa/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->b:J

    iget-object v0, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->c:Ljava/lang/String;

    check-cast p0, LKa/a;

    invoke-virtual {p0, v2, v3, v1, v0}, LKa/a;->w0(JLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to send log"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/F3;->j(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v0, LP9/a;

    invoke-static {v0}, LP9/a;->b(LP9/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "appVersionForInit"

    iget-object v0, v0, LP9/a;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, LG5/H3;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v2, LG6/f;

    if-nez v1, :cond_0

    invoke-static {v0, v2}, LG5/H3;->o(Landroid/content/Context;LG6/f;)V

    invoke-static {v0, v2}, LG5/H3;->n(Landroid/content/Context;LG6/f;)V

    :cond_0
    sget-object v0, LY9/c;->SEND_PREVIOUS_REGISTRATION_INFO:LY9/c;

    const-string v1, "RegisterLogSender sendLog"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v1, Lo3/n;

    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/Application;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lo3/n;->a:Ljava/lang/Object;

    iput-object v2, v1, Lo3/n;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iput-object v2, v1, Lo3/n;->c:Ljava/lang/Object;

    iput-object v0, v1, Lo3/n;->d:Ljava/lang/Object;

    const-string v0, "SATerms"

    invoke-static {v0}, LG5/G3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, v1, Lo3/n;->b:Ljava/lang/Object;

    check-cast v4, LG6/f;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Send previous agreement, timestamp : "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LG5/F3;->a(Ljava/lang/String;)V

    invoke-static {}, Lu5/d;->n()Lu5/d;

    move-result-object v3

    new-instance v8, LY9/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LY9/a;

    invoke-direct {v4, v1, v5, v6, v7}, LY9/a;-><init>(Lo3/n;Ljava/lang/String;J)V

    invoke-direct {v8, v5, v6, v7, v4}, LY9/b;-><init>(Ljava/lang/String;JLY9/a;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lu5/d;->m(LJa/a;)V

    goto :goto_1

    :cond_1
    sget-object v0, LY9/c;->SEND_PREVIOUS_REGISTRATION_INFO:LY9/c;

    iget-object v3, v1, Lo3/n;->d:Ljava/lang/Object;

    check-cast v3, LY9/c;

    if-eq v3, v0, :cond_4

    sget v0, LG5/H;->a:I

    const/4 v5, 0x2

    if-lt v0, v5, :cond_3

    invoke-virtual {v3}, LY9/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Send broadcast for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tid : 705-399-1025610"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG5/F3;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, LY9/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "tid"

    const-string v7, "705-399-1025610"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "agree"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, LY9/c;->DELETE_SENSITIVE_APP_DATA:LY9/c;

    if-ne v3, v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "event_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget v0, LG5/H;->a:I

    if-ne v0, v5, :cond_3

    invoke-static {p0, v5, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->c(Landroid/content/Context;ILG6/f;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    move-result-object p0

    check-cast p0, LU9/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, LU9/b;->f:Z

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Send agreement, timestamp : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/F3;->a(Ljava/lang/String;)V

    invoke-static {}, Lu5/d;->n()Lu5/d;

    move-result-object p0

    new-instance v0, LY9/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LY9/a;

    iget-object v5, v1, Lo3/n;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v1, v5, v2, v3}, LY9/a;-><init>(Lo3/n;Ljava/lang/String;J)V

    invoke-direct {v0, v5, v2, v3, v4}, LY9/b;-><init>(Ljava/lang/String;JLY9/a;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lu5/d;->m(LJa/a;)V

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public s(LN0/i;)V
    .locals 8

    iget-object p0, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p1, LN0/i;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/h;

    iget-object v5, v4, LN0/h;->N:[LN0/g;

    aget-object v6, v5, v1

    sget-object v7, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-eq v6, v7, :cond_0

    aget-object v3, v5, v3

    if-ne v3, v7, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p1, LN0/i;->m0:LO0/e;

    iput-boolean v3, p0, LO0/e;->b:Z

    return-void
.end method

.method public t(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lo3/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo3/t;-><init>(I)V

    iget-object v1, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v1, Lo3/t;

    iput-object v0, v1, Lo3/t;->d:Ljava/lang/Object;

    iput-object v0, p0, Lo3/t;->d:Ljava/lang/Object;

    iput-object p1, v0, Lo3/t;->c:Ljava/lang/Object;

    iput-object p2, v0, Lo3/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lo3/t;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, Lo3/t;

    iget-object p0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast p0, Lo3/t;

    const-string v1, ""

    :goto_0
    if-eqz p0, :cond_2

    iget-object v2, p0, Lo3/t;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object p0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast p0, Lo3/t;

    const-string v1, ", "

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo3/t;->c:Ljava/lang/Object;

    check-cast p0, Lo3/t;

    iget-object p0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast p0, Lo3/t;

    const-string v1, ""

    :goto_2
    if-eqz p0, :cond_5

    iget-object v2, p0, Lo3/t;->c:Ljava/lang/Object;

    instance-of v3, p0, LA5/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo3/t;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object p0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast p0, Lo3/t;

    const-string v1, ", "

    goto :goto_2

    :cond_5
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

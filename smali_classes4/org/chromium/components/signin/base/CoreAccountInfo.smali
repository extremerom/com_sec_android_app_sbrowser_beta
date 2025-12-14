.class public Lorg/chromium/components/signin/base/CoreAccountInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mEmail:Ljava/lang/String;

.field private final mGaiaId:Lorg/chromium/components/signin/base/GaiaId;

.field private final mId:Lorg/chromium/components/signin/base/CoreAccountId;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/base/CoreAccountId;Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mId:Lorg/chromium/components/signin/base/CoreAccountId;

    iput-object p2, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mEmail:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mGaiaId:Lorg/chromium/components/signin/base/GaiaId;

    return-void
.end method

.method public static createFromEmailAndGaiaId(Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;)Lorg/chromium/components/signin/base/CoreAccountInfo;
    .locals 2

    new-instance v0, Lorg/chromium/components/signin/base/CoreAccountInfo;

    new-instance v1, Lorg/chromium/components/signin/base/CoreAccountId;

    invoke-direct {v1, p1}, Lorg/chromium/components/signin/base/CoreAccountId;-><init>(Lorg/chromium/components/signin/base/GaiaId;)V

    invoke-direct {v0, v1, p0, p1}, Lorg/chromium/components/signin/base/CoreAccountInfo;-><init>(Lorg/chromium/components/signin/base/CoreAccountId;Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;)V

    return-object v0
.end method

.method public static getAndroidAccountFrom(Lorg/chromium/components/signin/base/CoreAccountInfo;)Landroid/accounts/Account;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/signin/AccountUtils;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/chromium/components/signin/base/CoreAccountInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/chromium/components/signin/base/CoreAccountInfo;

    iget-object v0, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mId:Lorg/chromium/components/signin/base/CoreAccountId;

    iget-object v2, p1, Lorg/chromium/components/signin/base/CoreAccountInfo;->mId:Lorg/chromium/components/signin/base/CoreAccountId;

    invoke-virtual {v0, v2}, Lorg/chromium/components/signin/base/CoreAccountId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mEmail:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/components/signin/base/CoreAccountInfo;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mGaiaId:Lorg/chromium/components/signin/base/GaiaId;

    iget-object p1, p1, Lorg/chromium/components/signin/base/CoreAccountInfo;->mGaiaId:Lorg/chromium/components/signin/base/GaiaId;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/base/GaiaId;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mEmail:Ljava/lang/String;

    return-object p0
.end method

.method public getGaiaId()Lorg/chromium/components/signin/base/GaiaId;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mGaiaId:Lorg/chromium/components/signin/base/GaiaId;

    return-object p0
.end method

.method public getId()Lorg/chromium/components/signin/base/CoreAccountId;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mId:Lorg/chromium/components/signin/base/CoreAccountId;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mId:Lorg/chromium/components/signin/base/CoreAccountId;

    invoke-virtual {v0}, Lorg/chromium/components/signin/base/CoreAccountId;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mEmail:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/chromium/components/signin/base/CoreAccountInfo;->mGaiaId:Lorg/chromium/components/signin/base/GaiaId;

    invoke-virtual {p0}, Lorg/chromium/components/signin/base/GaiaId;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getId()Lorg/chromium/components/signin/base/CoreAccountId;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "CoreAccountInfo{id[%s], name[%s]}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

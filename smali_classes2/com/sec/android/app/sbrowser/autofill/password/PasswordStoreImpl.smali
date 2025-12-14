.class Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordStore;


# instance fields
.field private final mNativeStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mNativeStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->lambda$fillMatchingLogins$0(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->lambda$fillMatchingLogins$1(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;)V

    return-void
.end method

.method private concatenate([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
    .locals 2
    .param p1    # [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    const-string v0, "Both"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->sendSAEventLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    const-string p1, "Local"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->sendSAEventLog(Ljava/lang/String;)V

    return-object p2

    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    const-string p2, "Pass"

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->sendSAEventLog(Ljava/lang/String;)V

    return-object p1

    :cond_3
    :goto_0
    array-length p0, p1

    array-length v0, p2

    add-int/2addr p0, v0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private isSamsungPassRequired(I)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$fillMatchingLogins$0(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V
    .locals 0

    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->concatenate([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    return-void
.end method

.method private synthetic lambda$fillMatchingLogins$1(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useMockPasswordForm()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "fillMatchingLogins signonRealm: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;->signonRealm:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "PasswordStoreImpl"

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;->signonRealm:Ljava/lang/String;

    invoke-static {p4, p0}, Lcom/sec/android/app/sbrowser/autofill/password/MockPasswordForm;->create(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/g;

    invoke-direct {v1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/password/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p4, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;->fillMatchingLogins(Ljava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;)V

    return-void
.end method

.method private sendSAEventLog(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Det"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "201"

    const-string v0, "9263"

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V
    .locals 1
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->isSamsungPassRequired(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mNativeStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;->addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V

    return-void
.end method

.method public fillMatchingLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;)V
    .locals 2
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mNativeStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->fillMatchingLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;)V

    return-void
.end method

.method public init(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mNativeStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->setImpl(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;)V

    return-void
.end method

.method public removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V
    .locals 1
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->isSamsungPassRequired(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mNativeStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;->removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V

    return-void
.end method

.method public updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V
    .locals 1
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->isSamsungPassRequired(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mNativeStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;->updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V

    return-void
.end method

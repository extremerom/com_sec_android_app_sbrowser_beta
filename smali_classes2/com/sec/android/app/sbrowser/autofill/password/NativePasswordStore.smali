.class public Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;


# instance fields
.field private mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mPendingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mPendingOperations:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->lambda$getAutofillableLogins$0(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->lambda$getAllLogins$1(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V

    return-void
.end method

.method public static synthetic c()Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;-><init>()V

    return-object v0
.end method

.method private flushPendingOperations()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mPendingOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mPendingOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mPendingOperations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/h;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    return-object v0
.end method

.method private synthetic lambda$getAllLogins$1(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;->getAllLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V

    return-void
.end method

.method private synthetic lambda$getAutofillableLogins$0(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;->getAutofillableLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V

    return-void
.end method


# virtual methods
.method public addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V
    .locals 2
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;->call(Z)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/i;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;->addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$AddLogin_Response;)V

    return-void
.end method

.method public fillMatchingLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;)V
    .locals 2
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    const-string p1, ""

    invoke-interface {p2, p0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/i;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;->fillMatchingLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;)V

    return-void
.end method

.method public getAllLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V
    .locals 3
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mPendingOperations:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;->getAllLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V

    return-void
.end method

.method public getAutofillableLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V
    .locals 3
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mPendingOperations:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;->getAutofillableLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V

    return-void
.end method

.method public removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V
    .locals 2
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;->call(Z)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/i;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;->removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$RemoveLogin_Response;)V

    return-void
.end method

.method public setImpl(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->flushPendingOperations()V

    return-void
.end method

.method public updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V
    .locals 2
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->mNativeStoreImpl:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;->call(Z)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/i;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;->updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$UpdateLogin_Response;)V

    return-void
.end method

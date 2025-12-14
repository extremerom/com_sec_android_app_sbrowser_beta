.class Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/password/export/DataMigrationService;


# instance fields
.field private mNativePasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSamsungPassPasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->mNativePasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->mSamsungPassPasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->lambda$migrateFromLocalToSamsungPassInternal$2(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->lambda$moveLoginData$3(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->lambda$migrateFromLocalToSamsungPass$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createMoveCompletableFuture(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->mSamsungPassPasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/password/g;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/util/concurrent/CompletableFuture;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->lambda$createMoveCompletableFuture$6(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/util/concurrent/CompletableFuture;Z)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->lambda$moveLoginData$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->lambda$migrateFromLocalToSamsungPassInternal$1(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g(I)[Ljava/util/concurrent/CompletableFuture;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->lambda$moveLoginData$4(I)[Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private getAllLoginsFromLocal()Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->mNativePasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/c;-><init>(Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->getAllLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V

    return-object v0
.end method

.method private getAutofillableLoginsFromLocal()Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->mNativePasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/c;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/c;-><init>(Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->getAutofillableLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V

    return-object v0
.end method

.method private synthetic lambda$createMoveCompletableFuture$6(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/util/concurrent/CompletableFuture;Z)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->mNativePasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/sec/android/app/sbrowser/autofill/password/c;

    const/4 v0, 0x2

    invoke-direct {p3, p2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/c;-><init>(Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$migrateFromLocalToSamsungPass$0(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->migrateFromLocalToSamsungPassInternal(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$migrateFromLocalToSamsungPassInternal$1(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->moveLoginData([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$migrateFromLocalToSamsungPassInternal$2(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->moveLoginData([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$moveLoginData$3(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->createMoveCompletableFuture(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$moveLoginData$4(I)[Ljava/util/concurrent/CompletableFuture;
    .locals 0

    new-array p0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method private static synthetic lambda$moveLoginData$5(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private migrateFromLocalToSamsungPass(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "DataMigrationServiceImpl"

    const-string p1, "TerraceHelper not initialized! nothing done!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->PASSWORD_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnDbThread(Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;Ljava/lang/Runnable;)V

    return-void
.end method

.method private migrateFromLocalToSamsungPassInternal(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isBlocklistSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->getAllLoginsFromLocal()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/b;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->getAutofillableLoginsFromLocal()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/b;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    :goto_0
    return-void
.end method

.method private moveLoginData([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/autofill/password/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/autofill/password/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/sec/android/app/sbrowser/autofill/password/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public migrateAllData(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->migrateFromLocalToSamsungPass(Ljava/lang/Runnable;)V

    return-void
.end method

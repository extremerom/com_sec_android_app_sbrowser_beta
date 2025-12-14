.class Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/password/export/DataRemoveService;


# instance fields
.field private mNativePasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->mNativePasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->removeLoginsWithBioFromLocalInternal()V

    return-void
.end method

.method public static synthetic b(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->lambda$removeLoginDataFromLocal$1(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->lambda$removeLoginsWithBioFromLocalInternal$0(Ljava/util/concurrent/CompletableFuture;)V

    return-void
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->mNativePasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/c;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/c;-><init>(Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->getAutofillableLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V

    return-object v0
.end method

.method private isAutofillWithBio(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Z
    .locals 0

    iget p0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$removeLoginDataFromLocal$1(Z)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$removeLoginsWithBioFromLocalInternal$0(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->removeLoginDataFromLocal([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    return-void
.end method

.method private removeLoginDataFromLocal([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->isAutofillWithBio(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->mNativePasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    aget-object v2, p1, v0

    new-instance v3, Lcom/sec/android/app/sbrowser/autofill/password/h;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/h;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeLoginsWithBioFromLocalInternal()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->getAutofillableLoginsFromLocal()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    filled-new-array {v0}, [Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/password/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public removeLoginsWithBioFromLocal()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    sget-object v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->PASSWORD_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/f;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnDbThread(Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;Ljava/lang/Runnable;)V

    return-void
.end method

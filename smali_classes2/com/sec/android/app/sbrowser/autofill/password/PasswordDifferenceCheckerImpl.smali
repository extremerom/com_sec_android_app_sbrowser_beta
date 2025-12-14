.class public Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordDifferenceChecker;


# instance fields
.field private mSamsungPassPasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;->mSamsungPassPasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;->lambda$onQuery$0(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;Z)V

    return-void
.end method

.method private isDeviceVirtualViewSupported()Z
    .locals 1

    sget p0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v0, 0xeac5

    if-lt p0, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPasswordDifferent(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;Z)V
    .locals 0
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;->mSamsungPassPasswordStore:Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->isPasswordDifferent(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-interface {p2, p0, p3}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;->call(IZ)V

    return-void
.end method

.method private synthetic lambda$onQuery$0(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;->isPasswordDifferent(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;Z)V

    return-void
.end method


# virtual methods
.method public getDeviceVertualViewSupportedStatus(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$GetDeviceVertualViewSupportedStatus_Response;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;->isDeviceVirtualViewSupported()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$GetDeviceVertualViewSupportedStatus_Response;->call(Z)V

    return-void
.end method

.method public onQuery(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;)V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;->isDeviceVirtualViewSupported()Z

    move-result v5

    iget v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-interface {p2, v1, v5}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;->call(IZ)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPasswordComparisonSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    invoke-interface {p2, p0, v5}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;->call(IZ)V

    return-void

    :cond_1
    sget-object v6, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->PASSWORD_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    new-instance v7, Lcom/sec/android/app/sbrowser/autofill/password/m;

    const/4 v1, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/autofill/password/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-static {v6, v7}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnDbThread(Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;Ljava/lang/Runnable;)V

    return-void
.end method

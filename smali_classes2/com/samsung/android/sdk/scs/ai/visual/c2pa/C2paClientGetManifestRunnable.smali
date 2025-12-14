.class public Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "C2paClientGetManifestRunnable"


# instance fields
.field private mCallback:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestsCallback;

.field private mFilePath:Ljava/lang/String;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable$1;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->mCallback:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestsCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->TAG:Ljava/lang/String;

    const-string v1, "execute getManifestsAsString()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$ExtractParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$ExtractParamBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$ExtractParamBuilder;->setPfd(Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$ExtractParamBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$ExtractParamBuilder;->setExtensionType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$ExtractParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$ExtractParamBuilder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$ExtractParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;->getC2PAService()Lcom/samsung/android/visual/ai/sdkcommon/o;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->mCallback:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestsCallback;

    check-cast v1, Lcom/samsung/android/visual/ai/sdkcommon/m;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/visual/ai/sdkcommon/m;->y0(Landroid/os/Bundle;Lcom/samsung/android/visual/ai/sdkcommon/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_C2PA"

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->mFilePath:Ljava/lang/String;

    return-void
.end method

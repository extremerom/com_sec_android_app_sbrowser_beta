.class public Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResultListener"
.end annotation


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;

.field private mCallbackKey:I

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getPopOverOptions()Landroid/os/Bundle;
    .locals 3

    const p0, 0xf4259

    invoke-static {p0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    :try_start_0
    invoke-static {p0, v0, v0, v0, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->semSetPopOverOptions(Landroid/app/ActivityOptions;[I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPopOverOptions failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ActivityLauncher"

    invoke-static {p0, v1, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private isChangingConfigurations()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    return p0
.end method

.method private launchActivity()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->getPopOverOptions()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "launchActivity failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ActivityLauncher"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->notifyActivityResult(I)V

    :goto_1
    return-void
.end method

.method public static newInstance(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;-><init>()V

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mIntent:Landroid/content/Intent;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallback:Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;

    return-object v0
.end method

.method private notifyActivityResult(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->a()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallbackKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallback:Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;

    if-nez v0, :cond_0

    const-string p0, "ActivityLauncher"

    const-string p1, "notifyActivityResult mCallback is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;->onActivityResult(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallback:Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;

    return-void
.end method

.method private restoreCallback(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "callback"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallbackKey:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->a()Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallbackKey:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallback:Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;

    return-void
.end method

.method private saveCallback(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->a()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallbackKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/decoder/RandomUtils;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallbackKey:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->a()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallbackKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallback:Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback"

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallbackKey:I

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->notifyActivityResult(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->launchActivity()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->restoreCallback(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->mCallback:Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->notifyActivityResult(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->saveCallback(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

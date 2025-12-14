.class public Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageActivityDelegate;


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

.field private mIsDownloadRequested:Z

.field private final mListener:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;

.field private mSaveAllImageController:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

.field private mSaveAllImageUi:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

.field private final mSecretModeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mIsDownloadRequested:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    new-instance v0, Lcom/google/firebase/messaging/z;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mListener:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/a;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSecretModeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->lambda$new$0(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->lambda$requestDownload$6()V

    return-void
.end method

.method private hasInsecureItems()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageController:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->hasInsecureItems()Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->lambda$requestDownload$5()V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->lambda$requestDownload$7()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->lambda$showInsecureDownloadPopup$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->lambda$showSecretDownloadPopup$4(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(ZLandroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestDownload$5()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageController:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->triggerDownload()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$requestDownload$6()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mIsDownloadRequested:Z

    return-void
.end method

.method private synthetic lambda$requestDownload$7()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/save_image/b;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/save_image/b;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/save_image/b;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;I)V

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showInsecureDownloadPopup$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mIsDownloadRequested:Z

    return-void
.end method

.method private synthetic lambda$showSecretDownloadPopup$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mIsDownloadRequested:Z

    return-void
.end method

.method private synthetic lambda$showSecretDownloadPopup$3(Lm/l;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mIsDownloadRequested:Z

    invoke-virtual {p1}, Lm/y;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showSecretDownloadPopup$4(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->requestDownload()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->onDownload()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->lambda$showSecretDownloadPopup$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;Lm/l;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->lambda$showSecretDownloadPopup$3(Lm/l;Landroid/view/View;)V

    return-void
.end method

.method private onDownload()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mIsDownloadRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mIsDownloadRequested:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->hasInsecureItems()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->showInsecureDownloadPopup()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->showSecretDownloadPopup()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->requestDownload()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageController:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageUi:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mIsDownloadRequested:Z

    return-void
.end method

.method private requestDownload()V
    .locals 3

    const-string v0, "disable-downloads"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/save_image/b;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;I)V

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->requestNotificationPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->requestDownload()V

    return-void
.end method

.method private showInsecureDownloadPopup()V
    .locals 3

    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f14049a

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    const v1, 0x7f140604

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$4;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V

    const v2, 0x7f14049b

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$3;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/save_image/c;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSecretDownloadPopup()V
    .locals 7

    const v0, 0x7f0e0804

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f14049b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v3, 0x7f140698

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v1, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    invoke-static {v2, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showSecretDownloadPopup(): Failed to set button shape enabled "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SaveAllImageActivityLog"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v4, Lm/k;

    const v5, 0x7f1501c5

    invoke-direct {v4, p0, v5}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v5, v4, Lm/k;->a:Lm/h;

    iput-boolean v3, v5, Lm/h;->m:Z

    invoke-virtual {v4, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/c;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/save_image/c;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v3, LFa/b;

    const/16 v4, 0xd

    invoke-direct {v3, v4, p0, v0}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/d;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageUi:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageUi:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;->isAvailable()Z

    move-result p1

    const-string v0, "SaveAllImageActivityLog"

    if-nez p1, :cond_0

    const-string p1, "onCreate: Terrace NA"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string p1, "[onCreate]"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageController:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    new-instance p1, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mListener:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;

    invoke-direct {p1, p0, v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;-><init>(Lm/n;Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageUi:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;->onCreate()V

    const-string p1, "2260"

    const-string v0, "226"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageController:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    int-to-long v1, p1

    const-string p1, "2261"

    invoke-static {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSecretModeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    invoke-virtual {p0}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$2;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;Z)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/A;->a(Landroidx/lifecycle/J;Landroidx/activity/u;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageController:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSecretModeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    :cond_1
    invoke-super {p0}, Lm/n;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SaveAllImageActivityLog"

    const-string v1, "[onRestoreInstanceState]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/save_image/b;-><init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageUi:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;->onResume()V

    :cond_0
    return-void
.end method

.method public updateUi()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->mSaveAllImageUi:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;->onUpdate()V

    return-void
.end method

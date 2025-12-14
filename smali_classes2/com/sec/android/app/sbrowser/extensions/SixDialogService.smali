.class public Lcom/sec/android/app/sbrowser/extensions/SixDialogService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mExtensionsFragmentUtils:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;

.field private mIsSixSIUpdated:Z

.field private mPermissionDialogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mPermissionDialogs:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mIsSixSIUpdated:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mExtensionsFragmentUtils:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mExtensionsFragmentUtils:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mPermissionDialogs:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mIsSixSIUpdated:Z

    return-void
.end method


# virtual methods
.method public dismissPermissionDialogs()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mPermissionDialogs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mPermissionDialogs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public shouldFlushAppData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mIsSixSIUpdated:Z

    return p0
.end method

.method public showSixConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mPermissionDialogs:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;

    invoke-direct {v1, p0, p5, p3, p4}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Ljava/lang/String;Z)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    invoke-virtual {v0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->show(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mPermissionDialogs:Ljava/util/Map;

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showSixSIUpdateGuideDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mIsSixSIUpdated:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$1;

    invoke-direct {v1, p0, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    invoke-virtual {v0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;->show(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    return-void
.end method

.method public showSixSIUpdateGuideDialogIfNeeded(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->hasNewUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "SixDialogService"

    const-string p1, "showSixSIUpdateGuideDialogIfNeeded - Limited but NOT updatable"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->showSixSIUpdateGuideDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public showUninstallGuideDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showUninstallGuideDialog - running with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixDialogService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "showUninstallGuideDialog - no pkgName. Unable to launch Galaxy Store"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$2;

    invoke-direct {v1, p0, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    invoke-virtual {v0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->show(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    return-void
.end method

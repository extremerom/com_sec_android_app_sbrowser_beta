.class public Lorg/chromium/components/autofill/AutofillManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/AutofillManagerWrapper$AutofillInputUiMonitor;,
        Lorg/chromium/components/autofill/AutofillManagerWrapper$InputUiObserver;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AwAutofillManager"

.field private static sIsLoggable:Z


# instance fields
.field private mAutofillManager:Landroid/view/autofill/AutofillManager;

.field private mDestroyed:Z

.field private mInputUiObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/chromium/components/autofill/AutofillManagerWrapper$InputUiObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsAutofillInputUiShowing:Z

.field private final mIsAwGCurrentAutofillService:Z

.field private mMonitor:Lorg/chromium/components/autofill/AutofillManagerWrapper$AutofillInputUiMonitor;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "AwAutofillManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->updateLogStat()V

    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "constructor"

    invoke-static {v1}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_0
    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move-object p1, v1

    :cond_1
    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    const/4 v2, 0x0

    const-string v3, ""

    if-nez p1, :cond_3

    iput-object v3, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mPackageName:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mIsAwGCurrentAutofillService:Z

    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "disabled"

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->getAutofillServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "getAutofillServiceComponentName"

    invoke-static {v0, v5, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mPackageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms/com.google.android.gms.autofill.service.AutofillService"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mIsAwGCurrentAutofillService:Z

    sget-boolean v3, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current provider at AutofillManagerWrapper ctor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Lorg/chromium/components/autofill/AutofillProviderUMA;->logCurrentProvider(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iput-object v3, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mPackageName:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mIsAwGCurrentAutofillService:Z

    :goto_1
    new-instance v0, Lorg/chromium/components/autofill/AutofillManagerWrapper$AutofillInputUiMonitor;

    invoke-direct {v0, p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper$AutofillInputUiMonitor;-><init>(Lorg/chromium/components/autofill/AutofillManagerWrapper;)V

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mMonitor:Lorg/chromium/components/autofill/AutofillManagerWrapper$AutofillInputUiMonitor;

    invoke-virtual {p1, v0}, Landroid/view/autofill/AutofillManager;->registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/autofill/AutofillManagerWrapper;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mIsAutofillInputUiShowing:Z

    return-void
.end method

.method private checkAndWarnIfDestroyed()Z
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "AwAutofillManager"

    const-string v2, "Application attempted to call on a destroyed AutofillManagerWrapper"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mDestroyed:Z

    return p0
.end method

.method public static isLoggable()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->sIsLoggable:Z

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AwAutofillManager"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateLogStat()V
    .locals 2
    .annotation build Lorg/chromium/build/annotations/DoNotStripLogs;
    .end annotation

    const-string v0, "AwAutofillManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->sIsLoggable:Z

    return-void
.end method


# virtual methods
.method public addInputUiObserver(Lorg/chromium/components/autofill/AutofillManagerWrapper$InputUiObserver;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mInputUiObservers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mInputUiObservers:Ljava/util/ArrayList;

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mInputUiObservers:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cancel"

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkAutofillServiceIsSPass()Z
    .locals 1

    const-string v0, "com.samsung.android.samsungpassautofill/com.samsung.android.samsungpassautofill.AutofillServiceMain"

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->getAutofillServiceComponentName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public commit(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "commit source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_1
    sget-boolean p1, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz p1, :cond_2

    const-string p1, "AwAutofillManager"

    const-string v0, "Notifying autofill framework about form submission"

    invoke-static {p1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->commit()V

    :cond_3
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 4

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "destroy"

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    iget-object v3, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mMonitor:Lorg/chromium/components/autofill/AutofillManagerWrapper$AutofillInputUiMonitor;

    invoke-virtual {v2, v3}, Landroid/view/autofill/AutofillManager;->unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v1, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    iput-boolean v0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mDestroyed:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    iput-boolean v0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mDestroyed:Z

    throw v2

    :cond_2
    :goto_0
    return-void
.end method

.method public getAutofillServiceComponentName()Ljava/lang/String;
    .locals 3

    const-string v0, "AwAutofillManager"

    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->getAutofillServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "getAutofillServiceComponentName"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-boolean v1, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAutofillServiceComponentName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public isAutofillInputUiShowing()Z
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAutofillInputUiShowing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mIsAutofillInputUiShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_1
    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mIsAutofillInputUiShowing:Z

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAwGCurrentAutofillService()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mIsAwGCurrentAutofillService:Z

    return p0
.end method

.method public isDisabled()Z
    .locals 1
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNullIf;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mDestroyed:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public notifyInputUiChange()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mInputUiObservers:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mInputUiObservers:Ljava/util/ArrayList;

    invoke-static {p0}, Lorg/chromium/base/CollectionUtil;->strengthen(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/autofill/AutofillManagerWrapper$InputUiObserver;

    invoke-interface {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper$InputUiObserver;->onInputUiShown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyNewSessionStarted(Z)V
    .locals 1

    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->updateLogStat()V

    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Session starts, has server prediction = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyVirtualValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notifyVirtualValueChanged"

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyVirtualViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    const-string v1, "AwAutofillManager"

    if-eqz v0, :cond_0

    const-string p0, "Autofill is disabled: AutofillManager isn\'t available in given Context."

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "notifyVirtualViewEntered"

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v0, :cond_3

    const-string v0, "Notifying autofill framework of the current focused virtual view info"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public notifyVirtualViewExited(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notifyVirtualViewExited"

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyVirtualViewVisibilityChanged(Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notifyVirtualViewVisibilityChanged"

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyVirtualViewsReady(Landroid/view/View;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/VirtualViewFillInfo;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "notifyVirtualViewsReady"

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-static {p0, p1, p2}, LA2/q;->v(Landroid/view/autofill/AutofillManager;Landroid/view/View;Landroid/util/SparseArray;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onContextChanged(Landroid/content/Context;)V
    .locals 1

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    return-void
.end method

.method public onServerPredictionsAvailable()V
    .locals 0

    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Server predictions available"

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "requestAutofill"

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showAutofillDialog(Landroid/view/View;I)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "AwAutofillManager"

    const-string p1, "Autofill is disabled: AutofillManager isn\'t available in given Context."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAndWarnIfDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "showAutofillDialog"

    invoke-static {v0}, Lorg/chromium/components/autofill/AutofillManagerWrapper;->log(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillManagerWrapper;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-static {p0, p1, p2}, Lorg/chromium/components/autofill/a;->m(Landroid/view/autofill/AutofillManager;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

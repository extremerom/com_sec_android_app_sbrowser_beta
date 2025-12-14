.class public Lorg/chromium/base/BinderCallsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sExceptionReporter:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSlowBinderCallAllowList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInvocationHandler:Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/chromium/base/BinderCallsListener;->sSlowBinderCallAllowList:Ljava/util/HashSet;

    const-string v43, "android.app.usage.IUsageStatsManager"

    const-string v44, "android.view.autofill.IAutoFillManager"

    const-string v1, "android.app.IActivityTaskManager"

    const-string v2, "android.content.pm.IPackageManager"

    const-string v3, "android.view.IWindowSession"

    const-string v4, "android.app.IUiModeManager"

    const-string v5, "android.content.pm.IShortcutService"

    const-string v6, "android.app.IActivityManager"

    const-string v7, "android.os.IServiceManager"

    const-string v8, "android.os.IPowerManager"

    const-string v9, "android.content.IContentProvider"

    const-string v10, "android.view.accessibility.IAccessibilityManager"

    const-string v11, "android.os.IUserManager"

    const-string v12, "android.hardware.devicestate.IDeviceStateManager"

    const-string v13, "com.android.internal.telephony.ISub"

    const-string v14, "com.android.internal.app.IAppOpsService"

    const-string v15, "android.view.IGraphicsStats"

    const-string v16, "android.app.job.IJobCallback"

    const-string v17, "android.app.trust.ITrustManager"

    const-string v18, "android.media.IAudioService"

    const-string v19, "com.android.internal.inputmethod.IImeTracker"

    const-string v20, "com.android.internal.inputmethod.IInputMethodSession"

    const-string v21, "com.android.internal.app.IVoiceInteractionManagerService"

    const-string v22, "com.android.internal.textservice.ITextServicesManager"

    const-string v23, "android.app.IActivityClientController"

    const-string v24, "com.android.internal.view.IInputMethodManager"

    const-string v25, "android.content.IContentService"

    const-string v26, "android.app.job.IJobScheduler"

    const-string v27, "android.net.IConnectivityManager"

    const-string v28, "android.view.IWindowManager"

    const-string v29, "android.permission.IPermissionManager"

    const-string v30, "android.app.ILocaleManager"

    const-string v31, "com.android.internal.appwidget.IAppWidgetService"

    const-string v32, "android.hardware.display.IDisplayManager"

    const-string v33, "android.content.IClipboard"

    const-string v34, "android.hardware.input.IInputManager"

    const-string v35, "android.app.INotificationManager"

    const-string v36, "android.app.IAppTask"

    const-string v37, "android.hardware.biometrics.IAuthService"

    const-string v38, "android.os.storage.IStorageManager"

    const-string v39, "android.app.backup.IBackupManager"

    const-string v40, "android.app.IUiAutomationConnection"

    const-string v41, "android.os.IThermalService"

    const-string v42, "android.os.INetworkManagementService"

    filled-new-array/range {v1 .. v44}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/base/Callback;
    .locals 1

    sget-object v0, Lorg/chromium/base/BinderCallsListener;->sExceptionReporter:Lorg/chromium/base/Callback;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lorg/chromium/base/BinderCallsListener;->sSlowBinderCallAllowList:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public setBinderCallListenerObserverForTesting(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/BinderCallsListener;->mInvocationHandler:Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->a(Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

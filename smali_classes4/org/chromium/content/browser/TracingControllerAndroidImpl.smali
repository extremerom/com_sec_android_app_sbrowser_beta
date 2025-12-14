.class public Lorg/chromium/content/browser/TracingControllerAndroidImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/TracingControllerAndroid;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;,
        Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;,
        Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBroadcastReceiver:Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;

.field private mCompressFile:Z

.field private final mContext:Landroid/content/Context;

.field private mFilename:Ljava/lang/String;

.field private final mIntentFilter:Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;

.field private mIsTracing:Z

.field private mNativeTracingControllerAndroid:J

.field private mShowToasts:Z

.field private mUseProtobuf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mShowToasts:Z

    iput-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;-><init>(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mBroadcastReceiver:Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;

    new-instance v0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mIntentFilter:Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;

    return-void
.end method

.method private static generateTracingFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "chrome-profile-results-"

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskWrites()Lorg/chromium/base/StrictModeContext;

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_3
    return-object p0

    :goto_1
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
.end method

.method private initializeNativeControllerIfNeeded()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mNativeTracingControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/TracingControllerAndroidImplJni;->get()Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;->init(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mNativeTracingControllerAndroid:J

    :cond_0
    return-void
.end method

.method private logAndToastError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TracingController"

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mShowToasts:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private logForProfiler(Ljava/lang/String;)V
    .locals 0

    const-string p0, "TracingController"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mShowToasts:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mBroadcastReceiver:Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;

    return-object p0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mIntentFilter:Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingIntentFilter;

    return-object p0
.end method

.method public getKnownCategories()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->getKnownCategories(Lorg/chromium/base/Callback;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TracingController"

    const-string v0, "Unable to fetch tracing category list."

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getKnownCategories(Lorg/chromium/base/Callback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->initializeNativeControllerIfNeeded()V

    invoke-static {}, Lorg/chromium/content/browser/TracingControllerAndroidImplJni;->get()Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mNativeTracingControllerAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;->getKnownCategoriesAsync(JLorg/chromium/content/browser/TracingControllerAndroidImpl;Lorg/chromium/base/Callback;)Z

    move-result p0

    return p0
.end method

.method public isTracing()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mIsTracing:Z

    return p0
.end method

.method public onKnownCategoriesReceived([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-eqz p2, :cond_0

    check-cast p2, Lorg/chromium/base/Callback;

    invoke-interface {p2, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTraceBufferUsageReceived(FJLjava/lang/Object;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    check-cast p4, Lorg/chromium/base/Callback;

    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onTracingStopped(Ljava/lang/Object;)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->isTracing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TracingController"

    const-string p1, "Received onTracingStopped, but we aren\'t tracing"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mFilename:Ljava/lang/String;

    const-string v1, "Profiler finished. Results are in "

    const-string v2, "."

    invoke-static {v1, v0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->logForProfiler(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/content/R$string;->profiler_stopped_toast:I

    iget-object v2, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mFilename:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mIsTracing:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mFilename:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mCompressFile:Z

    if-eqz p1, :cond_1

    check-cast p1, Lorg/chromium/base/Callback;

    invoke-interface {p1, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lorg/chromium/base/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public startTracing(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 7

    iput-boolean p2, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mShowToasts:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    invoke-static {p1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->generateTracingFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mContext:Landroid/content/Context;

    sget p3, Lorg/chromium/content/R$string;->profiler_no_storage_toast:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->logAndToastError(Ljava/lang/String;)V

    return p2

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "TracingController"

    const-string p1, "Received startTracing, but we\'re already tracing"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->initializeNativeControllerIfNeeded()V

    invoke-static {}, Lorg/chromium/content/browser/TracingControllerAndroidImplJni;->get()Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mNativeTracingControllerAndroid:J

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;->startTracing(JLorg/chromium/content/browser/TracingControllerAndroidImpl;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mContext:Landroid/content/Context;

    sget p3, Lorg/chromium/content/R$string;->profiler_error_toast:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->logAndToastError(Ljava/lang/String;)V

    return p2

    :cond_2
    const-string p2, "Profiler started: "

    invoke-static {p2, p3}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->logForProfiler(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mContext:Landroid/content/Context;

    sget v0, Lorg/chromium/content/R$string;->profiler_started_toast:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->showToast(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mFilename:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mCompressFile:Z

    iput-boolean p6, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mUseProtobuf:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mIsTracing:Z

    return p1
.end method

.method public startTracing(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->startTracing(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public stopTracing(Lorg/chromium/base/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/TracingControllerAndroidImplJni;->get()Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mNativeTracingControllerAndroid:J

    iget-object v5, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mFilename:Ljava/lang/String;

    iget-boolean v6, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mCompressFile:Z

    iget-boolean v7, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->mUseProtobuf:Z

    move-object v4, p0

    move-object v8, p1

    invoke-interface/range {v1 .. v8}, Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;->stopTracing(JLorg/chromium/content/browser/TracingControllerAndroidImpl;Ljava/lang/String;ZZLorg/chromium/base/Callback;)V

    :cond_0
    return-void
.end method

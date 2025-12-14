.class public Lorg/chromium/base/JavaExceptionReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/JavaExceptionReporter$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCrashAfterReport:Z

.field private mHandlingException:Z

.field private final mParent:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-boolean p2, p0, Lorg/chromium/base/JavaExceptionReporter;->mCrashAfterReport:Z

    return-void
.end method

.method private static installHandler(Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/base/JavaExceptionReporter;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/JavaExceptionReporter;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static reportException(Ljava/lang/Throwable;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lorg/chromium/base/JavaExceptionReporterJni;->get()Lorg/chromium/base/JavaExceptionReporter$Natives;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lorg/chromium/base/JavaExceptionReporter$Natives;->reportJavaException(ZLjava/lang/Throwable;)V

    return-void
.end method

.method public static reportStackTrace(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lorg/chromium/base/JavaExceptionReporterJni;->get()Lorg/chromium/base/JavaExceptionReporter$Natives;

    move-result-object v0

    invoke-static {p0}, Lorg/chromium/base/PiiElider;->sanitizeStacktrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/chromium/base/JavaExceptionReporter$Natives;->reportJavaStackTrace(Ljava/lang/String;)V

    return-void
.end method

.method public static shouldReportThrowable(Ljava/lang/Throwable;)Z
    .locals 0

    instance-of p0, p0, Landroid/os/DeadSystemException;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/base/JavaExceptionReporter;->mHandlingException:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/chromium/base/JavaExceptionReporter;->shouldReportThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/JavaExceptionReporter;->mHandlingException:Z

    invoke-static {}, Lorg/chromium/base/JavaExceptionReporterJni;->get()Lorg/chromium/base/JavaExceptionReporter$Natives;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/base/JavaExceptionReporter;->mCrashAfterReport:Z

    instance-of v2, p2, Lorg/chromium/base/JniAndroid$UncaughtExceptionException;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-interface {v0, v1, v2}, Lorg/chromium/base/JavaExceptionReporter$Natives;->reportJavaException(ZLjava/lang/Throwable;)V

    :cond_1
    iget-object p0, p0, Lorg/chromium/base/JavaExceptionReporter;->mParent:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

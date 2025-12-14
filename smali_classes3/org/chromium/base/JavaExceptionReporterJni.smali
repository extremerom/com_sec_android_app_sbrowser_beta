.class Lorg/chromium/base/JavaExceptionReporterJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/JavaExceptionReporter$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/base/JavaExceptionReporter$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/JavaExceptionReporterJni;

    invoke-direct {v0}, Lorg/chromium/base/JavaExceptionReporterJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public reportJavaException(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MLlibBXh(ZLjava/lang/Object;)V

    return-void
.end method

.method public reportJavaStackTrace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, LJ/N;->MmS4zlEt(Ljava/lang/Object;)V

    return-void
.end method

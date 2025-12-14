.class public Lorg/chromium/base/JNIUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/JNIUtils$JniClassLoader;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sHasBeenCalled:Z

.field private static final sJniClassLoader:Lorg/chromium/base/JNIUtils$JniClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/base/JNIUtils$JniClassLoader;

    invoke-direct {v0}, Lorg/chromium/base/JNIUtils$JniClassLoader;-><init>()V

    sput-object v0, Lorg/chromium/base/JNIUtils;->sJniClassLoader:Lorg/chromium/base/JNIUtils$JniClassLoader;

    return-void
.end method

.method private static getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/base/JNIUtils;->sHasBeenCalled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/JNIUtils;->overwriteNativeLibraryLoadedStatus()V

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/JNIUtils;->sHasBeenCalled:Z

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/chromium/base/BundleUtils;->isIsolatedSplitInstalled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "JNIUtils"

    const-string v3, "Init JNI Classloader for %s. isInstalled=%b"

    invoke-static {v2, v3, p0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/chromium/base/BundleUtils;->getOrCreateSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lorg/chromium/base/JNIUtils;->sJniClassLoader:Lorg/chromium/base/JNIUtils$JniClassLoader;

    return-object p0
.end method

.method private static overwriteNativeLibraryLoadedStatus()V
    .locals 1

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/JNIUtils$1;

    invoke-direct {v0}, Lorg/chromium/base/JNIUtils$1;-><init>()V

    sput-object v0, LG5/m;->a:Lorg/jni_zero/a;

    :cond_0
    return-void
.end method

.class public final Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

.field private final mVmPolicy:Landroid/os/StrictMode$VmPolicy;


# direct methods
.method private constructor <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->mVmPolicy:Landroid/os/StrictMode$VmPolicy;

    return-void
.end method

.method public static allowDiskReads()Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method

.method public static allowDiskWrites()Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->mVmPolicy:Landroid/os/StrictMode$VmPolicy;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_1
    return-void
.end method

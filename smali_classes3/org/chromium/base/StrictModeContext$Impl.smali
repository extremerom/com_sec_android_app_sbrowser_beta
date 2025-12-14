.class Lorg/chromium/base/StrictModeContext$Impl;
.super Lorg/chromium/base/StrictModeContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/StrictModeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# instance fields
.field private final mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

.field private final mVmPolicy:Landroid/os/StrictMode$VmPolicy;


# direct methods
.method private constructor <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/StrictMode$ThreadPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/StrictModeContext;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/StrictModeContext$Impl;->mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

    iput-object p2, p0, Lorg/chromium/base/StrictModeContext$Impl;->mVmPolicy:Landroid/os/StrictMode$VmPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/StrictMode$VmPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/StrictModeContext$Impl;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/StrictModeContext$Impl;->mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/StrictModeContext$Impl;->mVmPolicy:Landroid/os/StrictMode$VmPolicy;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long v0, p0

    const-string p0, "StrictModeContext"

    invoke-static {p0, v0, v1}, Lorg/chromium/base/TraceEvent;->finishAsync(Ljava/lang/String;J)V

    return-void
.end method

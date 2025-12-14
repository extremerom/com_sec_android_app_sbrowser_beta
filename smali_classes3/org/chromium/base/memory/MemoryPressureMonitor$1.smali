.class Lorg/chromium/base/memory/MemoryPressureMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/memory/MemoryPressureMonitor;->registerComponentCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/memory/MemoryPressureMonitor;


# direct methods
.method public constructor <init>(Lorg/chromium/base/memory/MemoryPressureMonitor;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/memory/MemoryPressureMonitor$1;->this$0:Lorg/chromium/base/memory/MemoryPressureMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/memory/MemoryPressureMonitor$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/memory/MemoryPressureMonitor$1;->lambda$onLowMemory$1()V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/base/memory/MemoryPressureMonitor$1;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/memory/MemoryPressureMonitor$1;->lambda$onTrimMemory$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$onLowMemory$1()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor$1;->this$0:Lorg/chromium/base/memory/MemoryPressureMonitor;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->notifyPressure(I)V

    return-void
.end method

.method private synthetic lambda$onTrimMemory$0(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/memory/MemoryPressureMonitor$1;->this$0:Lorg/chromium/base/memory/MemoryPressureMonitor;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/base/memory/MemoryPressureMonitor;->notifyPressure(I)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    new-instance v0, Lorg/chromium/base/memory/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/memory/a;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    invoke-static {p1}, Lorg/chromium/base/memory/MemoryPressureMonitor;->memoryPressureFromTrimLevel(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/chromium/base/memory/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/chromium/base/memory/b;-><init>(Ljava/lang/Object;Ljava/lang/Integer;I)V

    const/4 p0, 0x7

    invoke-static {p0, v1}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    :cond_0
    const/16 p0, 0x28

    if-ne p1, p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x22

    if-lt p0, p1, :cond_1

    invoke-static {}, Lorg/chromium/base/MemoryPressureListener;->onPreFreeze()V

    :cond_1
    return-void
.end method

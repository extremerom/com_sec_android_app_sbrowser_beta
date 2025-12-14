.class Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/BinderCallsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterfaceInvocationHandler"
.end annotation


# instance fields
.field private mCurrentInterfaceDescriptor:Ljava/lang/String;

.field private mCurrentTransactionId:I

.field private mCurrentTransactionStartTimeMillis:J

.field private mNumUploads:I

.field private mObserver:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic a(Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;Ljava/util/function/BiConsumer;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mObserver:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string p1, "onTransactStarted"

    const-string v0, "onTransactEnded"

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "BinderCallsListener.invoke"

    const/4 v3, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v2

    :cond_1
    aget-object p2, p3, v3

    check-cast p2, Landroid/os/IBinder;

    iget p3, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentTransactionId:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentTransactionId:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentTransactionStartTimeMillis:J

    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, p2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mObserver:Ljava/util/function/BiConsumer;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lorg/chromium/base/BinderCallsListener;->b()Ljava/util/HashSet;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget p0, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentTransactionId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2

    :catch_0
    iput-object v2, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    return-object v2

    :cond_4
    iget-object p1, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mObserver:Ljava/util/function/BiConsumer;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    aget-object p1, p3, v3

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentTransactionId:I

    if-eq p1, p2, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentTransactionStartTimeMillis:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x2

    cmp-long p3, p1, v0

    if-ltz p3, :cond_7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v3, 0x3fc999999999999aL    # 0.2

    cmpg-double p3, v0, v3

    if-gez p3, :cond_7

    iget p3, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mNumUploads:I

    const/4 v0, 0x3

    if-ge p3, v0, :cond_7

    invoke-static {}, Lorg/chromium/base/BinderCallsListener;->a()Lorg/chromium/base/Callback;

    move-result-object p3

    if-eqz p3, :cond_7

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "BinderCallsListener detected a slow call on the UI thread by: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mCurrentInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with duration="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms (max allowed: 2ms)"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/chromium/base/BinderCallsListener;->a()Lorg/chromium/base/Callback;

    move-result-object p2

    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    iget p1, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mNumUploads:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/chromium/base/BinderCallsListener$InterfaceInvocationHandler;->mNumUploads:I

    :cond_7
    :goto_0
    return-object v2
.end method

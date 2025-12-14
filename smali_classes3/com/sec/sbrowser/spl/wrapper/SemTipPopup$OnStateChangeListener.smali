.class public abstract Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnStateChangeListener"
.end annotation


# instance fields
.field final mProxyInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->a()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;->mProxyInstance:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->a()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;->mProxyInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBaseInstance()Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;->mProxyInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "onStateChanged"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract onStateChanged(I)V
.end method

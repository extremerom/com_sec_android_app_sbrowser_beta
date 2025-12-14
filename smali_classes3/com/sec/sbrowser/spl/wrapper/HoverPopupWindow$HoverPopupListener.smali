.class public abstract Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HoverPopupListener"
.end annotation


# instance fields
.field final mProxyInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->a()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;->mProxyInstance:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->a()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;->mProxyInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBaseInstance()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;->mProxyInstance:Ljava/lang/Object;

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
    const-string p2, "onSetContentView"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    invoke-direct {p2, p3}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract onSetContentView(Landroid/view/View;Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;)Z
.end method

.class public abstract Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$SemMultiSelectionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemMultiSelectionListener"
.end annotation


# instance fields
.field final mProxyInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->c()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$SemMultiSelectionListener;->mProxyInstance:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->c()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$SemMultiSelectionListener;->mProxyInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBaseInstance()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$SemMultiSelectionListener;->mProxyInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onMultiSelectionStarted"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p2, :cond_0

    const-string p2, "OnTwMultiSelectStart"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    array-length p2, p3

    if-ne p2, v2, :cond_1

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$SemMultiSelectionListener;->onMultiSelectionStarted(II)V

    goto :goto_0

    :cond_1
    const-string p2, "onMultiSelectionEnded"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "OnTwMultiSelectStop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    array-length p1, p3

    if-ne p1, v2, :cond_3

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$SemMultiSelectionListener;->onMultiSelectionEnded(II)V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onMultiSelectionEnded(II)V
.end method

.method public abstract onMultiSelectionStarted(II)V
.end method

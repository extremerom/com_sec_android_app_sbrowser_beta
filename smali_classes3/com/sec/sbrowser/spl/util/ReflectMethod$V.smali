.class public Lcom/sec/sbrowser/spl/util/ReflectMethod$V;
.super Lcom/sec/sbrowser/spl/util/ReflectMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/util/ReflectMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/sbrowser/spl/util/ReflectMethod<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/sbrowser/spl/util/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->wrapper(Ljava/lang/Object;)Lcom/sec/sbrowser/spl/util/ReflectBase;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

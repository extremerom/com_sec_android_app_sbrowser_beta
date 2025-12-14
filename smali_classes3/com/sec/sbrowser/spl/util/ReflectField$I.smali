.class public Lcom/sec/sbrowser/spl/util/ReflectField$I;
.super Lcom/sec/sbrowser/spl/util/ReflectField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/util/ReflectField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "I"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/sbrowser/spl/util/ReflectField<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/sbrowser/spl/util/ReflectField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/sbrowser/spl/util/ReflectField;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Integer;
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectField;->get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
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

.method public bridge synthetic get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectField$I;->get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getWithBaseInstance(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->wrapper(Ljava/lang/Object;)Lcom/sec/sbrowser/spl/util/ReflectBase;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectField$I;->get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/sbrowser/spl/util/ReflectField;->set(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic set(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sbrowser/spl/util/ReflectField$I;->set(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/Integer;)V

    return-void
.end method

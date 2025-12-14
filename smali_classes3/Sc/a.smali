.class public final LSc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public volatile cont:Lib/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lib/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Throwable;

    iget-object p0, p0, LSc/a;->cont:Lib/c;

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of p1, p2, Ljava/util/concurrent/CompletionException;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Ljava/util/concurrent/CompletionException;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p1

    :cond_4
    :goto_1
    invoke-static {p2}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p1

    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

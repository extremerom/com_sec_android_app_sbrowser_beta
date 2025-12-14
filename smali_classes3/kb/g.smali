.class public abstract Lkb/g;
.super Lkb/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lib/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lkb/a;-><init>(Lib/c;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object p0

    sget-object p1, Lib/i;->a:Lib/i;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getContext()Lib/h;
    .locals 0

    sget-object p0, Lib/i;->a:Lib/i;

    return-object p0
.end method

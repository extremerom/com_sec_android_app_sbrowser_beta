.class public final LZc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/z;


# instance fields
.field public final synthetic a:LZc/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LZc/a;->a:LZc/a;

    iput-object v0, p0, LZc/b;->a:LZc/a;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, LZc/b;

    if-nez p0, :cond_1

    instance-of p0, p1, LZc/a;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LZc/b;->a:LZc/a;

    invoke-virtual {p0, p1, p2}, Lib/a;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lib/g;)Lib/f;
    .locals 0

    iget-object p0, p0, LZc/b;->a:LZc/a;

    invoke-virtual {p0, p1}, Lib/a;->get(Lib/g;)Lib/f;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lib/g;
    .locals 0

    iget-object p0, p0, LZc/b;->a:LZc/a;

    invoke-virtual {p0}, Lib/a;->getKey()Lib/g;

    move-result-object p0

    return-object p0
.end method

.method public handleException(Lib/h;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, LZc/b;->a:LZc/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LZc/a;->b:Ljava/lang/Object;

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final hashCode()I
    .locals 0

    sget-object p0, LZc/a;->a:LZc/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public minusKey(Lib/g;)Lib/h;
    .locals 0

    iget-object p0, p0, LZc/b;->a:LZc/a;

    invoke-virtual {p0, p1}, Lib/a;->minusKey(Lib/g;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lib/h;)Lib/h;
    .locals 0

    iget-object p0, p0, LZc/b;->a:LZc/a;

    invoke-virtual {p0, p1}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object p0

    return-object p0
.end method

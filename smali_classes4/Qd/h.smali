.class public final LQd/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:LQd/q;

.field public b:Ljava/nio/charset/Charset;

.field public final c:Ljava/lang/ThreadLocal;

.field public d:LQd/p;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:LQd/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LQd/q;->base:LQd/q;

    iput-object v0, p0, LQd/h;->a:LQd/q;

    sget-object v0, LOd/a;->b:Ljava/nio/charset/Charset;

    iput-object v0, p0, LQd/h;->b:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, LQd/h;->c:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    iput-boolean v0, p0, LQd/h;->e:Z

    iput v0, p0, LQd/h;->f:I

    const/16 v0, 0x1e

    iput v0, p0, LQd/h;->g:I

    sget-object v0, LQd/g;->html:LQd/g;

    iput-object v0, p0, LQd/h;->h:LQd/g;

    return-void
.end method


# virtual methods
.method public final a()LQd/h;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, LQd/h;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, v0, LQd/h;->b:Ljava/nio/charset/Charset;

    iget-object p0, p0, LQd/h;->a:LQd/q;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQd/q;->valueOf(Ljava/lang/String;)LQd/q;

    move-result-object p0

    iput-object p0, v0, LQd/h;->a:LQd/q;

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Ljava/nio/charset/CharsetEncoder;
    .locals 3

    iget-object v0, p0, LQd/h;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iget-object v1, p0, LQd/h;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, LQd/p;->ascii:LQd/p;

    goto :goto_0

    :cond_0
    const-string v2, "UTF-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQd/p;->utf:LQd/p;

    goto :goto_0

    :cond_1
    sget-object v1, LQd/p;->fallback:LQd/p;

    :goto_0
    iput-object v1, p0, LQd/h;->d:LQd/p;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, LQd/h;->a()LQd/h;

    move-result-object p0

    return-object p0
.end method

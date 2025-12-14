.class public final LNc/o;
.super LNc/l0;
.source "SourceFile"

# interfaces
.implements LNc/n;


# instance fields
.field public final e:LNc/t0;


# direct methods
.method public constructor <init>(LNc/t0;)V
    .locals 0

    invoke-direct {p0}, LUc/l;-><init>()V

    iput-object p1, p0, LNc/o;->e:LNc/t0;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, LNc/n0;->j()LNc/t0;

    move-result-object p1

    iget-object p0, p0, LNc/o;->e:LNc/t0;

    invoke-virtual {p0, p1}, LNc/t0;->A(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, LNc/n0;->j()LNc/t0;

    move-result-object p0

    invoke-virtual {p0, p1}, LNc/t0;->G(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

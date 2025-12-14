.class public final Lx3/e;
.super LJ8/i;
.source "SourceFile"


# instance fields
.field public final d:Lx3/b;

.field public final e:Lx3/b;

.field public final f:Lx3/b;


# direct methods
.method public constructor <init>(Luc/m;Ljava/io/ByteArrayInputStream;)V
    .locals 1

    invoke-direct {p0, p1, p2}, LJ8/i;-><init>(Luc/m;Ljava/io/InputStream;)V

    new-instance v0, Lx3/b;

    invoke-direct {v0, p1, p2}, LJ8/i;-><init>(Luc/m;Ljava/io/InputStream;)V

    iput-object v0, p0, Lx3/e;->d:Lx3/b;

    new-instance v0, Lx3/b;

    invoke-direct {v0, p1, p2}, LJ8/i;-><init>(Luc/m;Ljava/io/InputStream;)V

    iput-object v0, p0, Lx3/e;->e:Lx3/b;

    new-instance v0, Lx3/b;

    invoke-direct {v0, p1, p2}, LJ8/i;-><init>(Luc/m;Ljava/io/InputStream;)V

    iput-object v0, p0, Lx3/e;->f:Lx3/b;

    return-void
.end method

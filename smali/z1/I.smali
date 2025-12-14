.class public final Lz1/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/l;


# instance fields
.field public a:Lx1/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lx1/p;->a:Lx1/p;

    iput-object v0, p0, Lz1/I;->a:Lx1/r;

    return-void
.end method


# virtual methods
.method public final a(Lx1/r;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lz1/I;->a:Lx1/r;

    return-void
.end method

.method public final b()Lx1/r;
    .locals 0

    iget-object p0, p0, Lz1/I;->a:Lx1/r;

    return-object p0
.end method

.method public final copy()Lx1/l;
    .locals 1

    new-instance v0, Lz1/I;

    invoke-direct {v0}, Lz1/I;-><init>()V

    iget-object p0, p0, Lz1/I;->a:Lx1/r;

    invoke-virtual {v0, p0}, Lz1/I;->a(Lx1/r;)V

    return-object v0
.end method

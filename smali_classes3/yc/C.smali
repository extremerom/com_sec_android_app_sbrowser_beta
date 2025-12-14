.class public final Lyc/C;
.super Lyc/p;
.source "SourceFile"


# instance fields
.field public final c:Lyc/H;


# direct methods
.method public constructor <init>(Lyc/A;Lyc/H;)V
    .locals 1

    const-string v0, "attributes"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lyc/p;-><init>(Lyc/A;)V

    iput-object p2, p0, Lyc/C;->c:Lyc/H;

    return-void
.end method


# virtual methods
.method public final E0()Lyc/H;
    .locals 0

    iget-object p0, p0, Lyc/C;->c:Lyc/H;

    return-object p0
.end method

.method public final Q0(Lyc/A;)Lyc/o;
    .locals 1

    new-instance v0, Lyc/C;

    iget-object p0, p0, Lyc/C;->c:Lyc/H;

    invoke-direct {v0, p1, p0}, Lyc/C;-><init>(Lyc/A;Lyc/H;)V

    return-object v0
.end method

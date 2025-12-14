.class public final LK1/o;
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

    iput-object v0, p0, LK1/o;->a:Lx1/r;

    return-void
.end method


# virtual methods
.method public final a(Lx1/r;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LK1/o;->a:Lx1/r;

    return-void
.end method

.method public final b()Lx1/r;
    .locals 0

    iget-object p0, p0, LK1/o;->a:Lx1/r;

    return-object p0
.end method

.method public final copy()Lx1/l;
    .locals 1

    new-instance v0, LK1/o;

    invoke-direct {v0}, LK1/o;-><init>()V

    iget-object p0, p0, LK1/o;->a:Lx1/r;

    invoke-virtual {v0, p0}, LK1/o;->a(Lx1/r;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, LK1/o;->a:Lx1/r;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EmittableSpacer(modifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

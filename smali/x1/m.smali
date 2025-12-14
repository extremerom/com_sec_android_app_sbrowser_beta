.class public Lx1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/l;


# instance fields
.field public a:Lx1/r;

.field public b:Lx1/u;

.field public c:Lx1/v;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lx1/p;->a:Lx1/p;

    iput-object v0, p0, Lx1/m;->a:Lx1/r;

    const/4 v0, 0x1

    iput v0, p0, Lx1/m;->d:I

    return-void
.end method


# virtual methods
.method public a(Lx1/r;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lx1/m;->a:Lx1/r;

    return-void
.end method

.method public b()Lx1/r;
    .locals 0

    iget-object p0, p0, Lx1/m;->a:Lx1/r;

    return-object p0
.end method

.method public copy()Lx1/l;
    .locals 2

    new-instance v0, Lx1/m;

    invoke-direct {v0}, Lx1/m;-><init>()V

    invoke-virtual {p0}, Lx1/m;->b()Lx1/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx1/m;->a(Lx1/r;)V

    iget-object v1, p0, Lx1/m;->b:Lx1/u;

    iput-object v1, v0, Lx1/m;->b:Lx1/u;

    iget-object v1, p0, Lx1/m;->c:Lx1/v;

    iput-object v1, v0, Lx1/m;->c:Lx1/v;

    iget p0, p0, Lx1/m;->d:I

    iput p0, v0, Lx1/m;->d:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lx1/m;->b()Lx1/r;

    move-result-object v0

    iget-object v1, p0, Lx1/m;->b:Lx1/u;

    iget-object v2, p0, Lx1/m;->c:Lx1/v;

    iget p0, p0, Lx1/m;->d:I

    invoke-static {p0}, LK1/k;->b(I)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EmittableImage(modifier="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", provider="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", colorFilterParams="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentScale="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

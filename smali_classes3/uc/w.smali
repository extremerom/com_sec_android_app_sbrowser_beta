.class public final Luc/w;
.super LJ2/i0;
.source "SourceFile"


# instance fields
.field public final e:Lcc/k;

.field public final f:Luc/w;

.field public final g:Lhc/b;

.field public final h:Lcc/j;

.field public final i:Z


# direct methods
.method public constructor <init>(Lcc/k;Lec/g;LX4/i;LJb/S;Luc/w;)V
    .locals 1

    const-string v0, "classProto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, p2, v0, p3, p4}, LJ2/i0;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Luc/w;->e:Lcc/k;

    iput-object p5, p0, Luc/w;->f:Luc/w;

    iget p3, p1, Lcc/k;->e:I

    invoke-static {p2, p3}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object p2

    iput-object p2, p0, Luc/w;->g:Lhc/b;

    sget-object p2, Lec/e;->f:Lec/c;

    iget p3, p1, Lcc/k;->d:I

    invoke-virtual {p2, p3}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcc/j;

    if-nez p2, :cond_0

    sget-object p2, Lcc/j;->CLASS:Lcc/j;

    :cond_0
    iput-object p2, p0, Luc/w;->h:Lcc/j;

    sget-object p2, Lec/e;->g:Lec/b;

    iget p1, p1, Lcc/k;->d:I

    invoke-virtual {p2, p1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Luc/w;->i:Z

    sget-object p0, Lec/e;->h:Lec/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final d()Lhc/c;
    .locals 0

    iget-object p0, p0, Luc/w;->g:Lhc/b;

    invoke-virtual {p0}, Lhc/b;->a()Lhc/c;

    move-result-object p0

    return-object p0
.end method

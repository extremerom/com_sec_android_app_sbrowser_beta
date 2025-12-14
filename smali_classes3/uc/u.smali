.class public final Luc/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final a:Luc/v;

.field public final b:LJ2/i0;

.field public final c:Lic/m;

.field public final d:Luc/b;

.field public final e:I

.field public final f:Lcc/b0;


# direct methods
.method public constructor <init>(Luc/v;LJ2/i0;Lic/m;Luc/b;ILcc/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/u;->a:Luc/v;

    iput-object p2, p0, Luc/u;->b:LJ2/i0;

    iput-object p3, p0, Luc/u;->c:Lic/m;

    iput-object p4, p0, Luc/u;->d:Luc/b;

    iput p5, p0, Luc/u;->e:I

    iput-object p6, p0, Luc/u;->f:Lcc/b0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Luc/u;->a:Luc/v;

    iget-object v0, v0, Luc/v;->a:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v1, v0, Luc/k;->e:Luc/c;

    iget-object v2, p0, Luc/u;->b:LJ2/i0;

    iget-object v6, p0, Luc/u;->f:Lcc/b0;

    iget-object v3, p0, Luc/u;->c:Lic/m;

    iget-object v4, p0, Luc/u;->d:Luc/b;

    iget v5, p0, Luc/u;->e:I

    invoke-interface/range {v1 .. v6}, Luc/e;->f(LJ2/i0;Lic/m;Luc/b;ILcc/b0;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

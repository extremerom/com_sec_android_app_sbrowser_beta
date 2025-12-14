.class public final LWb/s;
.super LMb/D;
.source "SourceFile"


# static fields
.field public static final synthetic n:[LAb/u;


# instance fields
.field public final h:LPb/x;

.field public final i:Lo3/i;

.field public final j:Lxc/i;

.field public final k:LWb/d;

.field public final l:Lxc/c;

.field public final m:LKb/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltb/p;

    const-class v1, LWb/s;

    const-string v2, "binaryClasses"

    const-string v3, "getBinaryClasses$descriptors_jvm()Ljava/util/Map;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "partToFacade"

    const-string v5, "getPartToFacade()Ljava/util/HashMap;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, LWb/s;->n:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lo3/i;LPb/x;)V
    .locals 4

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v1, p2, LPb/x;->a:Lhc/c;

    iget-object v2, v0, LVb/a;->o:LMb/B;

    invoke-direct {p0, v2, v1}, LMb/D;-><init>(LJb/C;Lhc/c;)V

    iput-object p2, p0, LWb/s;->h:LPb/x;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v1}, LG5/U2;->b(Lo3/i;LJb/h;LPb/n;I)Lo3/i;

    move-result-object p1

    iput-object p1, p0, LWb/s;->i:Lo3/i;

    iget-object v0, v0, LVb/a;->d:Lac/f;

    invoke-virtual {v0}, Lac/f;->c()Luc/k;

    move-result-object v0

    iget-object v0, v0, Luc/k;->c:Luc/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lec/f;->g:Lec/f;

    iget-object v0, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v1, v0, LVb/a;->a:Lxc/l;

    new-instance v2, LWb/q;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LWb/q;-><init>(LWb/s;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lxc/i;

    invoke-direct {v3, v1, v2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v3, p0, LWb/s;->j:Lxc/i;

    new-instance v2, LWb/d;

    invoke-direct {v2, p1, p2, p0}, LWb/d;-><init>(Lo3/i;LPb/x;LWb/s;)V

    iput-object v2, p0, LWb/s;->k:LWb/d;

    new-instance v2, LWb/q;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LWb/q;-><init>(LWb/s;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lxc/c;

    invoke-direct {v3, v1, v2}, Lxc/i;-><init>(Lxc/l;Lsb/a;)V

    iput-object v3, p0, LWb/s;->l:Lxc/c;

    iget-object v0, v0, LVb/a;->v:LSb/t;

    iget-boolean v0, v0, LSb/t;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, LKb/g;->a:LKb/f;

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, LG5/V2;->f(Lo3/i;LYb/b;)LVb/c;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LWb/s;->m:LKb/h;

    new-instance p1, LWb/q;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LWb/q;-><init>(LWb/s;I)V

    invoke-virtual {v1, p1}, Lxc/l;->a(Lsb/a;)Lxc/i;

    return-void
.end method


# virtual methods
.method public final G()Lrc/o;
    .locals 0

    iget-object p0, p0, LWb/s;->k:LWb/d;

    return-object p0
.end method

.method public final e()LJb/S;
    .locals 1

    new-instance v0, Lo3/f;

    invoke-direct {v0, p0}, Lo3/f;-><init>(LWb/s;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy Java package fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LMb/D;->f:Lhc/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LWb/s;->i:Lo3/i;

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->o:LMb/B;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()LKb/h;
    .locals 0

    iget-object p0, p0, LWb/s;->m:LKb/h;

    return-object p0
.end method

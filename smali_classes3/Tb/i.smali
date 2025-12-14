.class public final LTb/i;
.super LTb/b;
.source "SourceFile"


# static fields
.field public static final synthetic g:[LAb/u;


# instance fields
.field public final f:Lxc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, LTb/i;

    const-string v2, "allValueArguments"

    const-string v3, "getAllValueArguments()Ljava/util/Map;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, LTb/i;->g:[LAb/u;

    return-void
.end method

.method public constructor <init>(LPb/d;Lo3/i;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LGb/p;->w:Lhc/c;

    invoke-direct {p0, p2, p1, v0}, LTb/b;-><init>(Lo3/i;LPb/d;Lhc/c;)V

    iget-object p1, p2, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    iget-object p1, p1, LVb/a;->a:Lxc/l;

    new-instance p2, LDb/E;

    const/16 v0, 0xf

    invoke-direct {p2, v0, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, LTb/i;->f:Lxc/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2

    iget-object p0, p0, LTb/i;->f:Lxc/i;

    sget-object v0, LTb/i;->g:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

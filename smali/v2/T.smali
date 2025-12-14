.class public final Lv2/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv2/M0;

.field public final b:LA7/c;


# direct methods
.method public constructor <init>(LNc/B;Lv2/M0;)V
    .locals 6

    const-string v0, "parent"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv2/T;->a:Lv2/M0;

    new-instance v0, LA7/c;

    iget-object p2, p2, Lv2/M0;->a:LQc/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LG5/g4;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LG5/g4;-><init>(I)V

    iput-object v1, v0, LA7/c;->b:Ljava/lang/Object;

    sget-object v1, LPc/a;->SUSPEND:LPc/a;

    const/4 v2, 0x1

    const v3, 0x7fffffff

    invoke-static {v2, v3, v1}, LQc/n0;->a(IILPc/a;)LQc/m0;

    move-result-object v1

    iput-object v1, v0, LA7/c;->a:Ljava/lang/Object;

    new-instance v3, Lv2/o;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lv2/o;-><init>(LA7/c;Lib/c;)V

    new-instance v5, LQc/F0;

    invoke-direct {v5, v1, v3}, LQc/F0;-><init>(LQc/m0;Lv2/o;)V

    iput-object v5, v0, LA7/c;->c:Ljava/lang/Object;

    sget-object v1, LNc/D;->LAZY:LNc/D;

    new-instance v3, Lv2/n;

    invoke-direct {v3, p2, v0, v4}, Lv2/n;-><init>(LQc/h;LA7/c;Lib/c;)V

    invoke-static {p1, v4, v1, v3, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p1

    new-instance p2, Lm9/g;

    const/4 v1, 0x4

    invoke-direct {p2, v1, v0}, Lm9/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, LNc/t0;->q(Lsb/k;)LNc/P;

    iput-object p1, v0, LA7/c;->d:Ljava/lang/Object;

    new-instance p1, Lv2/l;

    invoke-direct {p1, v0, v4}, Lv2/l;-><init>(LA7/c;Lib/c;)V

    new-instance p2, LQc/k;

    invoke-direct {p2, p1}, LQc/k;-><init>(Lsb/n;)V

    iput-object p2, v0, LA7/c;->e:Ljava/lang/Object;

    iput-object v0, p0, Lv2/T;->b:LA7/c;

    return-void
.end method

.class public final Luc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Set;


# instance fields
.field public final a:Luc/k;

.field public final b:Lxc/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, LGb/p;->c:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->g()Lhc/c;

    move-result-object v0

    new-instance v1, Lhc/b;

    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v2

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-static {v1}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Luc/i;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Luc/k;)V
    .locals 2

    const-string v0, "components"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/i;->a:Luc/k;

    new-instance v0, LMb/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Luc/k;->a:Lxc/o;

    check-cast p1, Lxc/l;

    invoke-virtual {p1, v0}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p1

    iput-object p1, p0, Luc/i;->b:Lxc/j;

    return-void
.end method


# virtual methods
.method public final a(Lhc/b;Luc/f;)LJb/f;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Luc/i;->b:Lxc/j;

    new-instance v0, Luc/h;

    invoke-direct {v0, p1, p2}, Luc/h;-><init>(Lhc/b;Luc/f;)V

    invoke-virtual {p0, v0}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/f;

    return-object p0
.end method

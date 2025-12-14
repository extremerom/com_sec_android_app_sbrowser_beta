.class public final synthetic Lg3/o;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/r;


# static fields
.field public static final a:Lg3/o;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lg3/o;

    const-string v5, "createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;"

    const/4 v2, 0x1

    const/4 v1, 0x6

    const-class v3, Lg3/p;

    const-string v4, "createSchedulers"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lg3/o;->a:Lg3/o;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 p0, 0x1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    move-object v2, p2

    check-cast v2, Lf3/c;

    move-object v6, p3

    check-cast v6, Lr3/a;

    check-cast p4, Landroidx/work/impl/WorkDatabase;

    move-object v3, p5

    check-cast v3, Lm3/j;

    move-object v4, p6

    check-cast v4, Lg3/d;

    const-string p1, "p0"

    invoke-static {v1, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {v2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p2"

    invoke-static {v6, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p3"

    invoke-static {p4, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p4"

    invoke-static {v3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lg3/h;->a:Ljava/lang/String;

    new-instance p1, Lj3/c;

    invoke-direct {p1, v1, p4, v2}, Lj3/c;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lf3/c;)V

    const-class p2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {v1, p2, p0}, Lp3/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p2

    sget-object p3, Lg3/h;->a:Ljava/lang/String;

    const-string p4, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {p2, p3, p4}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lh3/c;

    new-instance v5, Lo3/l;

    invoke-direct {v5, v4, v6}, Lo3/l;-><init>(Lg3/d;Lr3/a;)V

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lh3/c;-><init>(Landroid/content/Context;Lf3/c;Lm3/j;Lg3/d;Lo3/l;Lr3/a;)V

    const/4 p3, 0x2

    new-array p3, p3, [Lg3/f;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    aput-object p2, p3, p0

    invoke-static {p3}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

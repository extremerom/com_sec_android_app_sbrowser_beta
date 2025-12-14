.class public final LW/r;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:LB0/a;

.field public final synthetic b:Z

.field public final synthetic c:LV9/a;

.field public final synthetic d:LW/t;

.field public final synthetic e:LPc/e;

.field public final synthetic f:LO7/a;


# direct methods
.method public constructor <init>(LB0/a;ZLV9/a;LW/t;LPc/e;LO7/a;)V
    .locals 0

    iput-object p1, p0, LW/r;->a:LB0/a;

    iput-boolean p2, p0, LW/r;->b:Z

    iput-object p3, p0, LW/r;->c:LV9/a;

    iput-object p4, p0, LW/r;->d:LW/t;

    iput-object p5, p0, LW/r;->e:LPc/e;

    iput-object p6, p0, LW/r;->f:LO7/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, LC0/e;

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LC0/j;->a:[LAb/u;

    sget-object v0, LC0/i;->e:LC0/k;

    iget-object v1, p0, LW/r;->a:LB0/a;

    invoke-virtual {p1, v0, v1}, LC0/e;->g(LC0/k;Ljava/lang/Object;)V

    iget-object v0, p0, LW/r;->c:LV9/a;

    iget-boolean v1, p0, LW/r;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, LC0/i;->d:LC0/k;

    sget-object v2, LC0/j;->a:[LAb/u;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, LC0/e;->g(LC0/k;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, LC0/i;->c:LC0/k;

    sget-object v2, LC0/j;->a:[LAb/u;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, LC0/e;->g(LC0/k;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, LW/r;->d:LW/t;

    if-eqz v1, :cond_1

    sget-object v2, LC0/d;->a:LC0/k;

    new-instance v3, LC0/a;

    invoke-direct {v3, v0, v1}, LC0/a;-><init>(Ljava/lang/String;Ldb/b;)V

    invoke-virtual {p1, v2, v3}, LC0/e;->g(LC0/k;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, LW/r;->e:LPc/e;

    if-eqz v1, :cond_2

    sget-object v2, LC0/d;->b:LC0/k;

    new-instance v3, LC0/a;

    invoke-direct {v3, v0, v1}, LC0/a;-><init>(Ljava/lang/String;Ldb/b;)V

    invoke-virtual {p1, v2, v3}, LC0/e;->g(LC0/k;Ljava/lang/Object;)V

    :cond_2
    sget-object v0, LC0/i;->b:LC0/k;

    sget-object v1, LC0/j;->a:[LAb/u;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    iget-object p0, p0, LW/r;->f:LO7/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, p0}, LC0/e;->g(LC0/k;Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

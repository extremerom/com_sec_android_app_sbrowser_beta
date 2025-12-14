.class public final LS/v;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Ly0/d;

.field public final synthetic b:LPc/B;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Ly0/d;LPc/B;Z)V
    .locals 0

    iput-object p1, p0, LS/v;->a:Ly0/d;

    iput-object p2, p0, LS/v;->b:LPc/B;

    iput-boolean p3, p0, LS/v;->c:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lx0/e;

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LS/v;->a:Ly0/d;

    invoke-static {p0, p1}, Ly0/e;->a(Ly0/d;Lx0/e;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v0, v1}, Lr0/b;->c(JJ)J

    invoke-virtual {p1}, Lx0/e;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-wide p0, Lr0/b;->b:J

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

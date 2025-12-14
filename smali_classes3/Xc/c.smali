.class public final LXc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ltb/j;

.field public final c:Ljava/lang/Object;

.field public final d:LQ6/i;

.field public final e:Lkb/i;

.field public final f:Lsb/o;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:LXc/e;


# direct methods
.method public constructor <init>(LXc/e;Ljava/lang/Object;Lsb/o;Lsb/o;LQ6/i;Lkb/i;Lsb/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXc/c;->i:LXc/e;

    iput-object p2, p0, LXc/c;->a:Ljava/lang/Object;

    check-cast p3, Ltb/j;

    iput-object p3, p0, LXc/c;->b:Ltb/j;

    iput-object p4, p0, LXc/c;->c:Ljava/lang/Object;

    iput-object p5, p0, LXc/c;->d:LQ6/i;

    iput-object p6, p0, LXc/c;->e:Lkb/i;

    iput-object p7, p0, LXc/c;->f:Lsb/o;

    const/4 p1, -0x1

    iput p1, p0, LXc/c;->h:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LXc/c;->g:Ljava/lang/Object;

    instance-of v1, v0, LUc/x;

    if-eqz v1, :cond_0

    check-cast v0, LUc/x;

    iget v1, p0, LXc/c;->h:I

    iget-object p0, p0, LXc/c;->i:LXc/e;

    iget-object p0, p0, LXc/e;->a:Lib/h;

    invoke-virtual {v0, v1, p0}, LUc/x;->h(ILib/h;)V

    goto :goto_1

    :cond_0
    instance-of p0, v0, LNc/P;

    if-eqz p0, :cond_1

    check-cast v0, LNc/P;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, LNc/P;->a()V

    :cond_2
    :goto_1
    return-void
.end method

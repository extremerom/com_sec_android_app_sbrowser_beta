.class public final LXb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final a:Lo3/t;

.field public final b:LJb/W;

.field public final c:LXb/a;

.field public final d:Lyc/L;

.field public final e:LPb/p;


# direct methods
.method public constructor <init>(Lo3/t;LJb/W;LXb/a;Lyc/L;LPb/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXb/c;->a:Lo3/t;

    iput-object p2, p0, LXb/c;->b:LJb/W;

    iput-object p3, p0, LXb/c;->c:LXb/a;

    iput-object p4, p0, LXb/c;->d:Lyc/L;

    iput-object p5, p0, LXb/c;->e:LPb/p;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, LXb/c;->a:Lo3/t;

    iget-object v0, v0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v0, LL8/a;

    iget-object v1, p0, LXb/c;->d:Lyc/L;

    invoke-interface {v1}, Lyc/L;->c()LJb/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, LJb/i;->n()Lyc/A;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p0, LXb/c;->c:LXb/a;

    const/4 v4, 0x0

    const/16 v7, 0x1f

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, LXb/a;->a(LXb/a;LXb/b;ZLjava/util/Set;Lyc/A;I)LXb/a;

    move-result-object v8

    iget-object v1, p0, LXb/c;->e:LPb/p;

    invoke-virtual {v1}, LPb/p;->d()Z

    move-result v10

    const/4 v9, 0x0

    const/16 v13, 0x3b

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, LXb/a;->a(LXb/a;LXb/b;ZLjava/util/Set;Lyc/A;I)LXb/a;

    move-result-object v1

    iget-object p0, p0, LXb/c;->b:LJb/W;

    invoke-virtual {v0, p0, v1}, LL8/a;->p(LJb/W;LXb/a;)Lyc/w;

    move-result-object p0

    return-object p0
.end method

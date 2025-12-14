.class public final LX3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/t;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LW3/t;

.field public final c:LW3/t;

.field public final d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;LW3/t;LW3/t;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LX3/d;->a:Landroid/content/Context;

    iput-object p2, p0, LX3/d;->b:LW3/t;

    iput-object p3, p0, LX3/d;->c:LW3/t;

    iput-object p4, p0, LX3/d;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILQ3/k;)LW3/s;
    .locals 11

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    new-instance p1, LW3/s;

    new-instance v9, Lk4/d;

    invoke-direct {v9, v4}, Lk4/d;-><init>(Ljava/lang/Object;)V

    new-instance v10, LX3/c;

    iget-object v3, p0, LX3/d;->c:LW3/t;

    iget-object v8, p0, LX3/d;->d:Ljava/lang/Class;

    iget-object v1, p0, LX3/d;->a:Landroid/content/Context;

    iget-object v2, p0, LX3/d;->b:LW3/t;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, LX3/c;-><init>(Landroid/content/Context;LW3/t;LW3/t;Landroid/net/Uri;IILQ3/k;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, LW3/s;-><init>(LQ3/g;Lcom/bumptech/glide/load/data/e;)V

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, LG5/F;->c(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

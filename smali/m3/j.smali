.class public final Lm3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm3/e;

.field public final b:Lm3/a;

.field public final c:Lm3/e;

.field public final d:Lm3/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr3/a;)V
    .locals 6

    new-instance v0, Lm3/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "taskExecutor"

    invoke-static {p2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, p2, v4}, Lm3/a;-><init>(Landroid/content/Context;Lr3/a;I)V

    new-instance v1, Lm3/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v1, v4, p2, v5}, Lm3/a;-><init>(Landroid/content/Context;Lr3/a;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lm3/h;->a:Ljava/lang/String;

    invoke-static {p2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lm3/g;

    invoke-direct {v5, v4, p2}, Lm3/g;-><init>(Landroid/content/Context;Lr3/a;)V

    new-instance v4, Lm3/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-direct {v4, p1, p2, v2}, Lm3/a;-><init>(Landroid/content/Context;Lr3/a;I)V

    invoke-static {p2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm3/j;->a:Lm3/e;

    iput-object v1, p0, Lm3/j;->b:Lm3/a;

    iput-object v5, p0, Lm3/j;->c:Lm3/e;

    iput-object v4, p0, Lm3/j;->d:Lm3/e;

    return-void
.end method

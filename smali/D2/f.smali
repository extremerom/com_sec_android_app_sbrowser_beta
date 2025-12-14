.class public final LD2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/P;


# instance fields
.field public final a:Ljava/lang/Number;

.field public final b:LD2/a;

.field public c:Landroid/animation/ValueAnimator;

.field public final synthetic d:I

.field public final e:Lsb/k;


# direct methods
.method public constructor <init>(LD2/a;Landroidx/recyclerview/widget/l1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LD2/f;->d:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LD2/f;-><init>(Ljava/lang/Number;LD2/a;)V

    iput-object p2, p0, LD2/f;->e:Lsb/k;

    return-void
.end method

.method public constructor <init>(LD2/a;Landroidx/recyclerview/widget/l1;B)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, LD2/f;->d:I

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3, p1}, LD2/f;-><init>(Ljava/lang/Number;LD2/a;)V

    iput-object p2, p0, LD2/f;->e:Lsb/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;LD2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/f;->a:Ljava/lang/Number;

    iput-object p2, p0, LD2/f;->b:LD2/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LD2/f;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    iget-object p0, p0, LD2/f;->c:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LD2/f;->c:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_2

    iget-object v1, p0, LD2/f;->a:Ljava/lang/Number;

    :cond_2
    return-object v1
.end method

.method public final c(Ljava/lang/Number;)V
    .locals 4

    sget-object v0, LNc/N;->a:LWc/f;

    sget-object v0, LUc/q;->a:LNc/w0;

    invoke-virtual {v0}, LNc/w0;->K()LNc/w0;

    move-result-object v0

    iget-object v1, p0, LD2/f;->b:LD2/a;

    const-string v2, "dispatcher"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v2, LD2/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v1, v3}, LD2/b;-><init>(LD2/f;Ljava/lang/Number;LD2/a;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v2, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

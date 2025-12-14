.class public final LY2/X;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:LN/f;

.field public final synthetic b:LY2/f0;


# direct methods
.method public constructor <init>(LY2/f0;LN/f;)V
    .locals 0

    iput-object p1, p0, LY2/X;->b:LY2/f0;

    iput-object p2, p0, LY2/X;->a:LN/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, LY2/X;->a:LN/f;

    invoke-virtual {v0, p1}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, LY2/X;->b:LY2/f0;

    iget-object p0, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, LY2/X;->b:LY2/f0;

    iget-object p0, p0, LY2/f0;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

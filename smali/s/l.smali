.class public final Ls/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public a:LJ7/c;

.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Ls/p;


# direct methods
.method public constructor <init>(Ls/p;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/l;->c:Ls/p;

    iput-object p2, p0, Ls/l;->b:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Ls/l;->a:LJ7/c;

    if-eqz p0, :cond_0

    iget-object p0, p0, LJ7/c;->b:Ljava/lang/Object;

    check-cast p0, Ls/k;

    iget-object p0, p0, Ls/k;->n:Ls/i;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls/i;->h:Z

    invoke-virtual {p0, p1}, Ls/i;->p(Z)V

    :cond_0
    return-void
.end method

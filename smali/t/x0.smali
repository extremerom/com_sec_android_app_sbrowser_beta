.class public Lt/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mMenu:Ls/i;

.field mMenuItemClickListener:Lt/w0;

.field mOnDismissListener:Lt/v0;

.field final mPopup:Ls/r;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lt/x0;->mXOffset:I

    iput v0, p0, Lt/x0;->mYOffset:I

    iput-object p1, p0, Lt/x0;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lt/x0;->mAnchor:Landroid/view/View;

    new-instance v5, Ls/i;

    invoke-direct {v5, p1}, Ls/i;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lt/x0;->mMenu:Ls/i;

    new-instance v0, Lt/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lt/D;-><init>(ILjava/lang/Object;)V

    iput-object v0, v5, Ls/i;->e:Ls/g;

    new-instance v0, Ls/r;

    const/4 v6, 0x0

    const v2, 0x7f0403f7

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Ls/r;-><init>(ILandroid/content/Context;Landroid/view/View;Ls/i;Z)V

    iput-object v0, p0, Lt/x0;->mPopup:Ls/r;

    const/4 p1, 0x1

    iput-boolean p1, v0, Ls/r;->c:Z

    iput p3, v0, Ls/r;->f:I

    new-instance p1, Lt/u0;

    invoke-direct {p1, p0}, Lt/u0;-><init>(Lt/x0;)V

    iput-object p1, v0, Ls/r;->j:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object p0, p0, Lt/x0;->mPopup:Ls/r;

    invoke-virtual {p0}, Ls/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ls/r;->i:Ls/y;

    invoke-virtual {p0}, Ls/y;->dismiss()V

    :cond_0
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lt/x0;->mMenu:Ls/i;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lr/k;

    iget-object p0, p0, Lt/x0;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lr/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lt/x0;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object p0, p0, Lt/x0;->mMenu:Ls/i;

    invoke-virtual {v0, p1, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public seslIsShowing()Z
    .locals 0

    iget-object p0, p0, Lt/x0;->mPopup:Ls/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls/r;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public seslSetOffset(II)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-object v0, p0, Lt/x0;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    neg-int p1, p1

    iput p1, p0, Lt/x0;->mXOffset:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lt/x0;->mXOffset:I

    :goto_0
    iput p2, p0, Lt/x0;->mYOffset:I

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iget-object p0, p0, Lt/x0;->mPopup:Ls/r;

    iput p1, p0, Ls/r;->f:I

    return-void
.end method

.method public setOnDismissListener(Lt/v0;)V
    .locals 0
    .param p1    # Lt/v0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lt/x0;->mOnDismissListener:Lt/v0;

    return-void
.end method

.method public setOnMenuItemClickListener(Lt/w0;)V
    .locals 0
    .param p1    # Lt/w0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lt/x0;->mMenuItemClickListener:Lt/w0;

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lt/x0;->mPopup:Ls/r;

    iget v1, p0, Lt/x0;->mXOffset:I

    iget p0, p0, Lt/x0;->mYOffset:I

    invoke-virtual {v0}, Ls/r;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Ls/r;->e:Landroid/view/View;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2, v2}, Ls/r;->d(IIZZ)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

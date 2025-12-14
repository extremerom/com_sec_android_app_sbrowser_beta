.class public Lm/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm/h;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lm/l;->h(ILandroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lm/k;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/h;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p2, p1}, Lm/l;->h(ILandroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lm/h;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v0, p0, Lm/k;->a:Lm/h;

    iput p2, p0, Lm/k;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object p0, p0, Lm/k;->a:Lm/h;

    iget-object v0, p0, Lm/h;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lm/h;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lm/k;->a:Lm/h;

    iput-object p1, p0, Lm/h;->i:Ljava/lang/CharSequence;

    iput-object p2, p0, Lm/h;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final c(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object p0, p0, Lm/k;->a:Lm/h;

    iget-object v0, p0, Lm/h;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lm/h;->k:Ljava/lang/CharSequence;

    iput-object p2, p0, Lm/h;->l:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public create()Lm/l;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lm/l;

    iget-object v7, p0, Lm/k;->a:Lm/h;

    iget-object v1, v7, Lm/h;->a:Landroid/view/ContextThemeWrapper;

    iget p0, p0, Lm/k;->b:I

    invoke-direct {v0, v1, p0}, Lm/l;-><init>(Landroid/view/ContextThemeWrapper;I)V

    iget-object p0, v7, Lm/h;->e:Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, v0, Lm/l;->f:Lm/j;

    if-eqz p0, :cond_0

    iput-object p0, v9, Lm/j;->y:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p0, v7, Lm/h;->d:Ljava/lang/CharSequence;

    if-eqz p0, :cond_2

    iput-object p0, v9, Lm/j;->d:Ljava/lang/CharSequence;

    iget-object v1, v9, Lm/j;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v9, Lm/j;->c:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p0, v7, Lm/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    iput-object p0, v9, Lm/j;->u:Landroid/graphics/drawable/Drawable;

    iget-object v1, v9, Lm/j;->v:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v9, Lm/j;->v:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    iget-object p0, v7, Lm/h;->f:Ljava/lang/CharSequence;

    if-eqz p0, :cond_4

    iput-object p0, v9, Lm/j;->e:Ljava/lang/CharSequence;

    iget-object v1, v9, Lm/j;->x:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p0, v7, Lm/h;->g:Ljava/lang/CharSequence;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, v7, Lm/h;->h:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {v9, v2, p0, v1}, Lm/j;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object p0, v7, Lm/h;->i:Ljava/lang/CharSequence;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v7, Lm/h;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {v9, v2, p0, v1}, Lm/j;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object p0, v7, Lm/h;->k:Ljava/lang/CharSequence;

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, v7, Lm/h;->l:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x3

    invoke-virtual {v9, v2, p0, v1}, Lm/j;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_3
    iget-object p0, v7, Lm/h;->q:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez p0, :cond_8

    iget-object p0, v7, Lm/h;->r:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_10

    :cond_8
    iget p0, v9, Lm/j;->C:I

    iget-object v1, v7, Lm/h;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v1, v7, Lm/h;->w:Z

    iget-object v3, v7, Lm/h;->a:Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_9

    new-instance v12, Lm/e;

    iget-object v5, v7, Lm/h;->q:[Ljava/lang/CharSequence;

    iget v4, v9, Lm/j;->D:I

    move-object v1, v12

    move-object v2, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lm/e;-><init>(Lm/h;Landroid/view/ContextThemeWrapper;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_5

    :cond_9
    iget-boolean v1, v7, Lm/h;->x:Z

    if-eqz v1, :cond_a

    iget v1, v9, Lm/j;->E:I

    goto :goto_4

    :cond_a
    iget v1, v9, Lm/j;->F:I

    :goto_4
    iget-object v12, v7, Lm/h;->r:Landroid/widget/ListAdapter;

    if-eqz v12, :cond_b

    goto :goto_5

    :cond_b
    new-instance v12, Lm/i;

    iget-object v2, v7, Lm/h;->q:[Ljava/lang/CharSequence;

    const v4, 0x1020014

    invoke-direct {v12, v3, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_5
    iput-object v12, v9, Lm/j;->z:Landroid/widget/ListAdapter;

    iget v1, v7, Lm/h;->y:I

    iput v1, v9, Lm/j;->A:I

    iget-object v1, v7, Lm/h;->s:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_c

    new-instance v1, Lm/f;

    invoke-direct {v1, v7, v9}, Lm/f;-><init>(Lm/h;Lm/j;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_6

    :cond_c
    iget-object v1, v7, Lm/h;->z:Lw2/h;

    if-eqz v1, :cond_d

    new-instance v1, Lm/g;

    invoke-direct {v1, v7, p0, v9}, Lm/g;-><init>(Lm/h;Landroidx/appcompat/app/AlertController$RecycleListView;Lm/j;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_d
    :goto_6
    iget-boolean v1, v7, Lm/h;->x:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_7

    :cond_e
    iget-boolean v1, v7, Lm/h;->w:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_f
    :goto_7
    iput-object p0, v9, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_10
    iget-object p0, v7, Lm/h;->u:Landroid/view/View;

    if-eqz p0, :cond_11

    iput-object p0, v9, Lm/j;->g:Landroid/view/View;

    iput v8, v9, Lm/j;->h:I

    iput-boolean v8, v9, Lm/j;->j:Z

    goto :goto_8

    :cond_11
    iget p0, v7, Lm/h;->t:I

    if-eqz p0, :cond_12

    iput-object v11, v9, Lm/j;->g:Landroid/view/View;

    iput p0, v9, Lm/j;->h:I

    iput-boolean v8, v9, Lm/j;->j:Z

    :cond_12
    :goto_8
    iget-boolean p0, v7, Lm/h;->m:Z

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean p0, v7, Lm/h;->m:Z

    if-eqz p0, :cond_13

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_13
    iget-object p0, v7, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, v7, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v7, Lm/h;->p:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_14

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_14
    return-object v0
.end method

.method public final d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lm/k;->a:Lm/h;

    iput-object p1, p0, Lm/h;->g:Ljava/lang/CharSequence;

    iput-object p2, p0, Lm/h;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object p0, p0, Lm/k;->a:Lm/h;

    iget-object v0, p0, Lm/h;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lm/h;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public final f()Lm/l;
    .locals 0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lm/k;->a:Lm/h;

    iget-object p0, p0, Lm/h;->a:Landroid/view/ContextThemeWrapper;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lm/k;->a:Lm/h;

    iget-object v1, v0, Lm/h;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lm/h;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Lm/h;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lm/k;->a:Lm/h;

    iget-object v1, v0, Lm/h;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lm/h;->g:Ljava/lang/CharSequence;

    iput-object p2, v0, Lm/h;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lm/k;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lm/k;->a:Lm/h;

    iput-object p1, v0, Lm/h;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lm/k;
    .locals 1

    iget-object v0, p0, Lm/k;->a:Lm/h;

    iput-object p1, v0, Lm/h;->u:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Lm/h;->t:I

    return-object p0
.end method

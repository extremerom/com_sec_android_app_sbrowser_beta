.class public final Lt/h;
.super Ls/r;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lt/m;


# direct methods
.method public constructor <init>(Lt/m;Landroid/content/Context;Ls/i;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Lt/h;->n:I

    iput-object p1, p0, Lt/h;->o:Lt/m;

    const v2, 0x7f040024

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ls/r;-><init>(ILandroid/content/Context;Landroid/view/View;Ls/i;Z)V

    const p2, 0x800005

    iput p2, p0, Ls/r;->f:I

    iget-object p1, p1, Lt/m;->w:Lt/D;

    iput-object p1, p0, Ls/r;->h:Ls/s;

    iget-object p0, p0, Ls/r;->i:Ls/y;

    if-eqz p0, :cond_0

    iput-object p1, p0, Ls/y;->q:Ls/s;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lt/m;Landroid/content/Context;Ls/z;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lt/h;->n:I

    iput-object p1, p0, Lt/h;->o:Lt/m;

    const/4 v6, 0x0

    const v2, 0x7f040024

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ls/r;-><init>(ILandroid/content/Context;Landroid/view/View;Ls/i;Z)V

    iget-object p2, p3, Ls/z;->A:Ls/k;

    invoke-virtual {p2}, Ls/k;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lt/m;->i:Lt/k;

    if-nez p2, :cond_0

    iget-object p2, p1, Lt/m;->h:Ls/v;

    check-cast p2, Landroid/view/View;

    :cond_0
    iput-object p2, p0, Ls/r;->e:Landroid/view/View;

    :cond_1
    iget-object p1, p1, Lt/m;->w:Lt/D;

    iput-object p1, p0, Ls/r;->h:Ls/s;

    iget-object p0, p0, Ls/r;->i:Ls/y;

    if-eqz p0, :cond_2

    iput-object p1, p0, Ls/y;->q:Ls/s;

    :cond_2
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Lt/h;->n:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/h;->o:Lt/m;

    iget-object v1, v0, Lt/m;->c:Ls/i;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ls/i;->c(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lt/m;->s:Lt/h;

    invoke-super {p0}, Ls/r;->c()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lt/h;->o:Lt/m;

    iput-object v0, v1, Lt/m;->t:Lt/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Ls/r;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lr/l;
.super Lf1/b0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LO8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/l;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr/l;->b:Z

    iput p1, p0, Lr/l;->c:I

    return-void
.end method

.method public constructor <init>(Lt/l1;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/l;->d:Ljava/lang/Object;

    iput p2, p0, Lr/l;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr/l;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lr/l;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/l;->b:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd()V
    .locals 3

    iget v0, p0, Lr/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lr/l;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr/l;->d:Ljava/lang/Object;

    check-cast v0, Lt/l1;

    iget-object v0, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Lr/l;->c:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    iget v0, p0, Lr/l;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/l;->c:I

    iget-object v1, p0, Lr/l;->d:Ljava/lang/Object;

    check-cast v1, LO8/c;

    iget-object v2, v1, LO8/c;->c:Ljava/io/Serializable;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, v1, LO8/c;->e:Ljava/lang/Object;

    check-cast v0, Lf1/b0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lf1/a0;->onAnimationEnd()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lr/l;->c:I

    iput-boolean v0, p0, Lr/l;->b:Z

    iput-boolean v0, v1, LO8/c;->b:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 1

    iget v0, p0, Lr/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr/l;->d:Ljava/lang/Object;

    check-cast p0, Lt/l1;

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lr/l;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/l;->b:Z

    iget-object p0, p0, Lr/l;->d:Ljava/lang/Object;

    check-cast p0, LO8/c;

    iget-object p0, p0, LO8/c;->e:Ljava/lang/Object;

    check-cast p0, Lf1/b0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf1/a0;->onAnimationStart()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

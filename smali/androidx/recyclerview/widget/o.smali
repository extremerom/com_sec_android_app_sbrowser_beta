.class public final Landroidx/recyclerview/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/o;->a:I

    iput-object p2, p0, Landroidx/recyclerview/widget/o;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/recyclerview/widget/o;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Landroidx/recyclerview/widget/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/recyclerview/widget/o;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/f;

    iget-object v1, v0, Landroidx/recyclerview/widget/f;->d:Landroidx/recyclerview/widget/i;

    iget v2, v1, Landroidx/recyclerview/widget/i;->g:I

    iget v3, v0, Landroidx/recyclerview/widget/f;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroidx/recyclerview/widget/i;->f:Ljava/util/List;

    iget-object v0, v0, Landroidx/recyclerview/widget/f;->b:Ljava/util/List;

    iput-object v0, v1, Landroidx/recyclerview/widget/i;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Landroidx/recyclerview/widget/i;->f:Ljava/util/List;

    iget-object p0, p0, Landroidx/recyclerview/widget/o;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/z;

    iget-object v0, v1, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/c;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/i0;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/i;->a(Ljava/util/List;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/o;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/v;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h1;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/v;->animateAddImpl(Landroidx/recyclerview/widget/h1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v3, Landroidx/recyclerview/widget/v;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/o;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/v;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/t;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/v;->animateChangeImpl(Landroidx/recyclerview/widget/t;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v3, Landroidx/recyclerview/widget/v;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/u;

    iget-object v4, v2, Landroidx/recyclerview/widget/u;->a:Landroidx/recyclerview/widget/h1;

    iget v7, v2, Landroidx/recyclerview/widget/u;->d:I

    iget v8, v2, Landroidx/recyclerview/widget/u;->e:I

    iget-object v3, p0, Landroidx/recyclerview/widget/o;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/v;

    iget v5, v2, Landroidx/recyclerview/widget/u;->b:I

    iget v6, v2, Landroidx/recyclerview/widget/u;->c:I

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/v;->animateMoveImpl(Landroidx/recyclerview/widget/h1;IIII)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/recyclerview/widget/o;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/v;

    iget-object p0, p0, Landroidx/recyclerview/widget/v;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

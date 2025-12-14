.class public final Landroidx/emoji2/text/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/emoji2/text/f;->a:I

    iput-object p3, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    iput p1, p0, Landroidx/emoji2/text/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILe3/m;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/emoji2/text/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/emoji2/text/f;->b:I

    iput-object p2, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Landroidx/emoji2/text/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, LG6/a;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    iput p2, p0, Landroidx/emoji2/text/f;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/emoji2/text/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    iget p0, p0, Landroidx/emoji2/text/f;->b:I

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast v0, Le3/m;

    iget p0, p0, Landroidx/emoji2/text/f;->b:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/datepicker/n;

    iget-object v0, v0, Lcom/google/android/material/datepicker/n;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Landroidx/emoji2/text/f;->b:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast v0, Lc5/y;

    iget p0, p0, Landroidx/emoji2/text/f;->b:I

    invoke-virtual {v0, p0}, Lc5/y;->f(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast v0, LI3/d;

    iget-object v0, v0, LI3/d;->b:Ljava/lang/Object;

    check-cast v0, LW0/b;

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/emoji2/text/f;->b:I

    invoke-virtual {v0, p0}, LW0/b;->j(I)V

    :cond_0
    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget p0, p0, Landroidx/emoji2/text/f;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_1

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/e;

    invoke-virtual {p0}, Landroidx/emoji2/text/e;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/e;

    invoke-virtual {p0}, Landroidx/emoji2/text/e;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

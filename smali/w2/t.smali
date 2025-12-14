.class public final Lw2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw2/t;->a:I

    iput-object p2, p0, Lw2/t;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lw2/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lw2/t;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/g;

    invoke-virtual {p0}, Landroidx/preference/g;->g()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lw2/t;->b:Ljava/lang/Object;

    check-cast p0, Lw2/d;

    invoke-virtual {p0}, Lw2/d;->m()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lw2/t;->b:Ljava/lang/Object;

    check-cast p0, Lw2/A;

    iget-object p0, p0, Lw2/A;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Landroidx/recyclerview/widget/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/t1;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/recyclerview/widget/k0;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/recyclerview/widget/r1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/r1;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/k0;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/recyclerview/widget/r1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/r1;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/k0;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/k0;->a:I

    iput-object p2, p0, Landroidx/recyclerview/widget/k0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/s1;
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/k0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/k0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/r1;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/k0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/r1;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.class public final LJc/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJc/l;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LJc/p;->a:I

    iput-object p2, p0, LJc/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, LJc/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LJc/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LJc/p;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Lbd/e;

    iget-object p0, p0, LJc/p;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lbd/e;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_2
    new-instance v0, LKc/d;

    iget-object p0, p0, LJc/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, LKc/d;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, LJc/g;

    invoke-direct {v0, p0}, LJc/g;-><init>(LJc/p;)V

    return-object v0

    :pswitch_4
    iget-object p0, p0, LJc/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

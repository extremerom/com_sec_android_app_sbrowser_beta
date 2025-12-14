.class public final synthetic Lcom/google/common/cache/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/common/cache/v;->a:I

    iput-object p2, p0, Lcom/google/common/cache/v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/cache/v;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/cache/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/c;

    iget-object p0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/H;

    check-cast p0, Lcom/google/common/collect/J;

    iget-object p0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/y;-><init>(Lcom/google/common/collect/E;Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/cache/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/cache/w;

    iget-object p0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/A;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/A;->n(Ljava/lang/Object;)Z

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

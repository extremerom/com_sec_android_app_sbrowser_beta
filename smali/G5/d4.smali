.class public final LG5/d4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;LG5/c4;I)V
    .locals 1

    iput p3, p0, LG5/d4;->a:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, LG5/d4;->b:Ljava/lang/Object;

    new-instance p0, LG5/d4;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, LG5/d4;-><init>(Landroid/content/Context;LG5/c4;I)V

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, LF4/a;->e:LF4/a;

    invoke-static {p1}, LH4/w;->b(Landroid/content/Context;)V

    invoke-static {}, LH4/w;->a()LH4/w;

    move-result-object p1

    invoke-virtual {p1, p2}, LH4/w;->c(LF4/a;)LH4/u;

    move-result-object p1

    sget-object p2, LF4/a;->d:Ljava/util/Set;

    new-instance p3, LE4/b;

    const-string v0, "json"

    invoke-direct {p3, v0}, LE4/b;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/firebase/components/o;

    new-instance p3, LG5/h4;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, LG5/h4;-><init>(LH4/u;I)V

    invoke-direct {p2, p3}, Lcom/google/firebase/components/o;-><init>(LC7/a;)V

    :cond_0
    new-instance p2, Lcom/google/firebase/components/o;

    new-instance p3, LG5/h4;

    const/4 v0, 0x1

    invoke-direct {p3, p1, v0}, LG5/h4;-><init>(LH4/u;I)V

    invoke-direct {p2, p3}, Lcom/google/firebase/components/o;-><init>(LC7/a;)V

    iput-object p2, p0, LG5/d4;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(LG5/g4;)V
    .locals 2

    iget v0, p0, LG5/d4;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LG5/d4;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/components/o;

    invoke-virtual {p0}, Lcom/google/firebase/components/o;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LH4/v;

    iget v0, p1, LG5/g4;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LG5/g4;->m()[B

    move-result-object p1

    new-instance v0, LE4/a;

    sget-object v1, LE4/c;->DEFAULT:LE4/c;

    invoke-direct {v0, p1, v1}, LE4/a;-><init>(Ljava/lang/Object;LE4/c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LG5/g4;->m()[B

    move-result-object p1

    new-instance v0, LE4/a;

    sget-object v1, LE4/c;->VERY_LOW:LE4/c;

    invoke-direct {v0, p1, v1}, LE4/a;-><init>(Ljava/lang/Object;LE4/c;)V

    :goto_0
    invoke-virtual {p0, v0}, LH4/v;->a(LE4/a;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LG5/d4;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG5/d4;

    invoke-virtual {v0, p1}, LG5/d4;->a(LG5/g4;)V

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

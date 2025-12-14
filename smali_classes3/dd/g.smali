.class public final Ldd/g;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ldd/h;


# direct methods
.method public synthetic constructor <init>(Ldd/h;I)V
    .locals 0

    iput p2, p0, Ldd/g;->a:I

    iput-object p1, p0, Ldd/g;->b:Ldd/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ldd/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ldd/g;->b:Ldd/h;

    iget-object p0, p0, Ldd/h;->b:Ldd/d;

    invoke-interface {p0}, Ldd/d;->typeParametersSerializers()[Lad/b;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3}, Lad/b;->getDescriptor()Lbd/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Ldd/f;->a(Ljava/util/List;)[Lbd/d;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ldd/g;->b:Ldd/h;

    iget-object p0, p0, Ldd/h;->b:Ldd/d;

    invoke-interface {p0}, Ldd/d;->childSerializers()[Lad/b;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Ldd/f;->b:[Lad/b;

    :cond_2
    return-object p0

    :pswitch_1
    iget-object p0, p0, Ldd/g;->b:Ldd/h;

    iget-object v0, p0, Ldd/h;->j:Ljava/lang/Object;

    invoke-interface {v0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbd/d;

    invoke-static {p0, v0}, Ldd/f;->b(Lbd/d;[Lbd/d;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

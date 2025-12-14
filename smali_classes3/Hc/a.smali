.class public final LHc/a;
.super LHc/l;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    iput p3, p0, LHc/a;->b:I

    iput-object p1, p0, LHc/a;->c:Ljava/lang/Object;

    iput-object p2, p0, LHc/a;->d:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ltb/w;Lsb/k;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LHc/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHc/a;->d:Ljava/io/Serializable;

    iput-object p2, p0, LHc/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LHc/a;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p1, LJb/d;

    const-string v0, "current"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LHc/a;->d:Ljava/io/Serializable;

    check-cast v0, Ltb/w;

    iget-object v1, v0, Ltb/w;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object p0, p0, LHc/a;->c:Ljava/lang/Object;

    check-cast p0, Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    iput-object p1, v0, Ltb/w;->a:Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, LHc/a;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LJb/d;

    const-string v0, "current"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LHc/a;->d:Ljava/io/Serializable;

    check-cast p0, Ltb/w;

    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, LJb/f;

    const-string v0, "javaClassDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LHc/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, LG5/V3;->b(LJb/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, LIb/t;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, LHc/a;->d:Ljava/io/Serializable;

    check-cast p0, Ltb/w;

    if-eqz v0, :cond_1

    sget-object p1, LIb/n;->HIDDEN:LIb/n;

    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, LIb/t;->d:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, LIb/n;->VISIBLE:LIb/n;

    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, LIb/t;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LIb/n;->DEPRECATED_LIST_METHODS:LIb/n;

    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v0, LIb/t;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, LIb/n;->DROP:LIb/n;

    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    :cond_4
    :goto_1
    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_1
    iget-object v0, p0, LHc/a;->c:Ljava/lang/Object;

    check-cast v0, Lsb/k;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, LHc/a;->d:Ljava/io/Serializable;

    check-cast p0, [Z

    if-eqz p1, :cond_6

    aput-boolean v0, p0, v1

    :cond_6
    aget-boolean p0, p0, v1

    xor-int/2addr p0, v0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LHc/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LHc/a;->d:Ljava/io/Serializable;

    check-cast p0, Ltb/w;

    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    check-cast p0, LJb/d;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LHc/a;->d:Ljava/io/Serializable;

    check-cast p0, Ltb/w;

    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    check-cast p0, LIb/n;

    if-nez p0, :cond_0

    sget-object p0, LIb/n;->NOT_CONSIDERED:LIb/n;

    :cond_0
    return-object p0

    :pswitch_1
    iget-object p0, p0, LHc/a;->d:Ljava/io/Serializable;

    check-cast p0, [Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

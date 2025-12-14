.class public final LDb/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LMb/i;Lxc/o;LJb/T;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LDb/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/v;->d:Ljava/lang/Object;

    iput-object p2, p0, LDb/v;->b:Ljava/lang/Object;

    iput-object p3, p0, LDb/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, LDb/v;->a:I

    iput-object p1, p0, LDb/v;->b:Ljava/lang/Object;

    iput-object p3, p0, LDb/v;->c:Ljava/lang/Object;

    iput-object p4, p0, LDb/v;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LDb/v;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LDb/v;->d:Ljava/lang/Object;

    check-cast v0, Lwc/p;

    iget-object v0, v0, Lwc/p;->b:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->p:Lic/g;

    iget-object v1, p0, LDb/v;->c:Ljava/lang/Object;

    check-cast v1, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, LDb/v;->b:Ljava/lang/Object;

    check-cast p0, Lic/c;

    invoke-virtual {p0, v1, v0}, Lic/c;->b(Ljava/io/ByteArrayInputStream;Lic/g;)Lic/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LDb/v;->b:Ljava/lang/Object;

    check-cast v0, LWb/B;

    iget-object v1, v0, LWb/B;->b:Lo3/i;

    iget-object v1, v1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v1, v1, LVb/a;->a:Lxc/l;

    new-instance v2, LDb/J;

    iget-object v3, p0, LDb/v;->c:Ljava/lang/Object;

    check-cast v3, LPb/t;

    iget-object p0, p0, LDb/v;->d:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    invoke-direct {v2, v0, v3, p0}, LDb/J;-><init>(LWb/B;LPb/t;Ltb/w;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lxc/h;

    invoke-direct {p0, v1, v2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    return-object p0

    :pswitch_1
    new-instance v0, LMb/h;

    iget-object v1, p0, LDb/v;->d:Ljava/lang/Object;

    check-cast v1, LMb/i;

    iget-object v2, p0, LDb/v;->b:Ljava/lang/Object;

    check-cast v2, Lxc/o;

    iget-object p0, p0, LDb/v;->c:Ljava/lang/Object;

    check-cast p0, LJb/T;

    invoke-direct {v0, v1, v2, p0}, LMb/h;-><init>(LMb/i;Lxc/o;LJb/T;)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, LDb/v;->b:Ljava/lang/Object;

    check-cast v0, Lyc/w;

    invoke-virtual {v0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v1, v0, LJb/f;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, LJb/f;

    invoke-static {v1}, LDb/I0;->k(LJb/f;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, LDb/v;->c:Ljava/lang/Object;

    check-cast v2, LDb/y;

    if-eqz v1, :cond_2

    iget-object p0, p0, LDb/v;->d:Ljava/lang/Object;

    check-cast p0, LDb/C;

    iget-object v3, p0, LDb/C;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object p0, p0, LDb/C;->b:Ljava/lang/Class;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInterfaces(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lfb/l;->v([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, LDb/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No superclass of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in Java reflection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, LDb/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported superclass of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, LDb/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supertype not a class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

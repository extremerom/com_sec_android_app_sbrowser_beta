.class public final Lwc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lwc/g;


# direct methods
.method public synthetic constructor <init>(Lwc/g;I)V
    .locals 0

    iput p2, p0, Lwc/f;->a:I

    iput-object p1, p0, Lwc/f;->b:Lwc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lwc/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lwc/f;->b:Lwc/g;

    iget-object v0, p0, Lwc/g;->g:Lzc/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "classDescriptor"

    iget-object p0, p0, Lwc/g;->j:Lwc/i;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lwc/i;->w()Lyc/L;

    move-result-object p0

    check-cast p0, Lyc/h;

    invoke-virtual {p0}, Lyc/h;->d()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "getSupertypes(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    sget-object v0, Lrc/f;->m:Lrc/f;

    sget-object v1, Lrc/o;->a:Lrc/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lrc/l;->b:Lrc/l;

    sget-object v2, LRb/c;->WHEN_GET_ALL_DESCRIPTORS:LRb/c;

    iget-object p0, p0, Lwc/f;->b:Lwc/g;

    invoke-virtual {p0, v0, v1, v2}, Lwc/p;->i(Lrc/f;Lsb/k;LRb/c;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

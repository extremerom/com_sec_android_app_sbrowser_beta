.class public final LEb/l;
.super LEb/m;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;ZI)V
    .locals 0

    iput p3, p0, LEb/l;->e:I

    invoke-direct {p0, p1, p2}, LEb/m;-><init>(Ljava/lang/reflect/Field;Z)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LEb/l;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LEb/x;->a([Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string v0, "args"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LG5/p2;->a(LEb/g;[Ljava/lang/Object;)V

    invoke-static {p1}, Lfb/l;->s([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LEb/x;->b(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class public final LIb/p;
.super LMb/D;
.source "SourceFile"


# instance fields
.field public final synthetic h:I


# direct methods
.method public constructor <init>(LJb/C;Lhc/c;I)V
    .locals 0

    iput p3, p0, LIb/p;->h:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p1, p2}, LMb/D;-><init>(LJb/C;Lhc/c;)V

    return-void

    :pswitch_0
    const-string p3, "module"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "fqName"

    invoke-static {p2, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LMb/D;-><init>(LJb/C;Lhc/c;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic G()Lrc/o;
    .locals 0

    iget p0, p0, LIb/p;->h:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lrc/n;->b:Lrc/n;

    return-object p0

    :pswitch_0
    sget-object p0, Lrc/n;->b:Lrc/n;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

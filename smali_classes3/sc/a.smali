.class public final Lsc/a;
.super LF3/f;
.source "SourceFile"

# interfaces
.implements Lsc/d;


# instance fields
.field public final synthetic c:I

.field public final d:Lhc/f;

.field public final e:LJb/m;


# direct methods
.method public constructor <init>(LJb/b;Lyc/w;Lhc/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lsc/a;->c:I

    const-string v0, "receiverType"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, LF3/f;-><init>(Lyc/w;)V

    check-cast p1, LMb/o;

    iput-object p1, p0, Lsc/a;->e:LJb/m;

    iput-object p3, p0, Lsc/a;->d:Lhc/f;

    return-void
.end method

.method public constructor <init>(LJb/f;Lyc/w;Lhc/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsc/a;->c:I

    const-string v0, "receiverType"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, LF3/f;-><init>(Lyc/w;)V

    iput-object p1, p0, Lsc/a;->e:LJb/m;

    iput-object p3, p0, Lsc/a;->d:Lhc/f;

    return-void
.end method


# virtual methods
.method public final S0()Lhc/f;
    .locals 1

    iget v0, p0, Lsc/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lsc/a;->d:Lhc/f;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lsc/a;->d:Lhc/f;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lsc/a;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cxt { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lsc/a;->e:LJb/m;

    check-cast p0, LMb/o;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LF3/f;->getType()Lyc/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Ctx { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsc/a;->e:LJb/m;

    check-cast p0, LJb/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

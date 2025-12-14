.class public final Lyc/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lyc/L;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lrc/o;Lyc/H;Lyc/L;Z)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lyc/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lyc/x;->b:Lyc/L;

    iput-object p1, p0, Lyc/x;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lyc/H;Lyc/L;Z)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lyc/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyc/x;->b:Lyc/L;

    iput-object p1, p0, Lyc/x;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lyc/x;->a:I

    check-cast p1, Lzc/f;

    packed-switch v0, :pswitch_data_0

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/x;->b:Lyc/L;

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string v0, "refiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/x;->b:Lyc/L;

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

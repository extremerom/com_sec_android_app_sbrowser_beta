.class public final Lyc/J;
.super Lyc/c;
.source "SourceFile"


# static fields
.field public static final b:Lyc/J;

.field public static final c:Lyc/J;

.field public static final d:Lyc/J;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lyc/J;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyc/J;-><init>(I)V

    sput-object v0, Lyc/J;->b:Lyc/J;

    new-instance v0, Lyc/J;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lyc/J;-><init>(I)V

    sput-object v0, Lyc/J;->c:Lyc/J;

    new-instance v0, Lyc/J;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lyc/J;-><init>(I)V

    sput-object v0, Lyc/J;->d:Lyc/J;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lyc/J;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(Lyc/K;LBc/d;)LBc/e;
    .locals 0

    iget p0, p0, Lyc/J;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "state"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lyc/K;->d:Lzc/b;

    invoke-interface {p0, p2}, Lzc/b;->k(LBc/d;)Lyc/A;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "state"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-string p0, "state"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lyc/K;->d:Lzc/b;

    invoke-interface {p0, p2}, Lzc/b;->n(LBc/d;)Lyc/A;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

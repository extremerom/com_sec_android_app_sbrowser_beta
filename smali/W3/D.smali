.class public final LW3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/t;


# static fields
.field public static final b:LW3/D;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW3/D;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LW3/D;-><init>(I)V

    sput-object v0, LW3/D;->b:LW3/D;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LW3/D;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILQ3/k;)LW3/s;
    .locals 0

    iget p0, p0, LW3/D;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/io/File;

    new-instance p0, LW3/s;

    new-instance p2, Lk4/d;

    invoke-direct {p2, p1}, Lk4/d;-><init>(Ljava/lang/Object;)V

    new-instance p3, LW3/d;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1}, LW3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p2, p3}, LW3/s;-><init>(LQ3/g;Lcom/bumptech/glide/load/data/e;)V

    return-object p0

    :pswitch_1
    new-instance p0, LW3/s;

    new-instance p2, Lk4/d;

    invoke-direct {p2, p1}, Lk4/d;-><init>(Ljava/lang/Object;)V

    new-instance p3, LW3/d;

    const/4 p4, 0x1

    invoke-direct {p3, p4, p1}, LW3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p2, p3}, LW3/s;-><init>(LQ3/g;Lcom/bumptech/glide/load/data/e;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, LW3/D;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

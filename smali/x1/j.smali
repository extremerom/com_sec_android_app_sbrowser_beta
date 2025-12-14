.class public final Lx1/j;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final b:Lx1/j;

.field public static final c:Lx1/j;

.field public static final d:Lx1/j;

.field public static final e:Lx1/j;

.field public static final f:Lx1/j;

.field public static final g:Lx1/j;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lx1/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx1/j;-><init>(II)V

    sput-object v0, Lx1/j;->b:Lx1/j;

    new-instance v0, Lx1/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lx1/j;-><init>(II)V

    sput-object v0, Lx1/j;->c:Lx1/j;

    new-instance v0, Lx1/j;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lx1/j;-><init>(II)V

    sput-object v0, Lx1/j;->d:Lx1/j;

    new-instance v0, Lx1/j;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lx1/j;-><init>(II)V

    sput-object v0, Lx1/j;->e:Lx1/j;

    new-instance v0, Lx1/j;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lx1/j;-><init>(II)V

    sput-object v0, Lx1/j;->f:Lx1/j;

    new-instance v0, Lx1/j;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lx1/j;-><init>(II)V

    sput-object v0, Lx1/j;->g:Lx1/j;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lx1/j;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lx1/j;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No default size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No default glance id"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No default context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    sget-object p0, LJ1/b;->B:LJ1/b;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

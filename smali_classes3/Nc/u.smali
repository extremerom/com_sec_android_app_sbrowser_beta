.class public final LNc/u;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:LNc/u;

.field public static final c:LNc/u;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LNc/u;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LNc/u;-><init>(II)V

    sput-object v0, LNc/u;->b:LNc/u;

    new-instance v0, LNc/u;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LNc/u;-><init>(II)V

    sput-object v0, LNc/u;->c:LNc/u;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LNc/u;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LNc/u;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lib/h;

    check-cast p2, Lib/f;

    invoke-interface {p1, p2}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Lib/f;

    return-object p1

    :pswitch_1
    check-cast p1, Lib/h;

    check-cast p2, Lib/f;

    invoke-interface {p1, p2}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

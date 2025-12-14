.class public final LR/o;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final b:LR/o;

.field public static final c:LR/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LR/o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LR/o;-><init>(II)V

    sput-object v0, LR/o;->b:LR/o;

    new-instance v0, LR/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LR/o;-><init>(II)V

    sput-object v0, LR/o;->c:LR/o;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LR/o;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, LR/o;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LR/x;

    invoke-direct {p0}, LR/x;-><init>()V

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

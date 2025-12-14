.class public final Lz1/B;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final b:Lz1/B;

.field public static final c:Lz1/B;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lz1/B;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz1/B;-><init>(II)V

    sput-object v0, Lz1/B;->b:Lz1/B;

    new-instance v0, Lz1/B;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz1/B;-><init>(II)V

    sput-object v0, Lz1/B;->c:Lz1/B;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lz1/B;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lz1/B;->a:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lz1/w0;->a:I

    new-instance p0, Lz1/I;

    invoke-direct {p0}, Lz1/I;-><init>()V

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

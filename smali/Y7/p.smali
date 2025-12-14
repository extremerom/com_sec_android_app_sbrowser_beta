.class public final LY7/p;
.super LY7/r;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LY7/p;->b:I

    packed-switch p2, :pswitch_data_0

    sget-object p2, LY7/s;->ISBN:LY7/s;

    invoke-direct {p0, p2}, LY7/r;-><init>(LY7/s;)V

    iput-object p1, p0, LY7/p;->c:Ljava/lang/String;

    return-void

    :pswitch_0
    sget-object p2, LY7/s;->TEXT:LY7/s;

    invoke-direct {p0, p2}, LY7/r;-><init>(LY7/s;)V

    iput-object p1, p0, LY7/p;->c:Ljava/lang/String;

    return-void

    :pswitch_1
    sget-object p2, LY7/s;->PRODUCT:LY7/s;

    invoke-direct {p0, p2}, LY7/r;-><init>(LY7/s;)V

    iput-object p1, p0, LY7/p;->c:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LY7/p;->b:I

    sget-object v0, LY7/s;->PASSKEY:LY7/s;

    invoke-direct {p0, v0}, LY7/r;-><init>(LY7/s;)V

    iput-object p1, p0, LY7/p;->c:Ljava/lang/String;

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget v0, p0, LY7/p;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LY7/p;->c:Ljava/lang/String;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LY7/p;->c:Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-object p0, p0, LY7/p;->c:Ljava/lang/String;

    return-object p0

    :pswitch_2
    iget-object p0, p0, LY7/p;->c:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

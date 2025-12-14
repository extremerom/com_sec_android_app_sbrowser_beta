.class public final Lcom/google/common/base/e;
.super Lcom/google/common/base/i;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/common/base/e;

.field public static final d:Lcom/google/common/base/e;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/base/e;

    const-string v1, "CharMatcher.ascii()"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/e;->c:Lcom/google/common/base/e;

    new-instance v0, Lcom/google/common/base/e;

    const-string v1, "CharMatcher.none()"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/e;->d:Lcom/google/common/base/e;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/base/e;->b:I

    invoke-direct {p0, p1}, Lcom/google/common/base/i;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/google/common/base/e;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/base/C;->k(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public n(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/google/common/base/e;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/base/C;->n(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public o(Ljava/lang/String;I)I
    .locals 1

    iget v0, p0, Lcom/google/common/base/e;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/google/common/base/C;->o(Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p2, p0}, Lcom/google/common/base/C;->h(II)V

    const/4 p0, -0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(C)Z
    .locals 0

    iget p0, p0, Lcom/google/common/base/e;->b:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x7f

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public r(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/google/common/base/e;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/base/C;->r(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public s(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/google/common/base/e;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/base/C;->s(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/common/base/e;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/base/C;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

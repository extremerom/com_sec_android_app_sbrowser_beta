.class public final Ly3/l;
.super Ly3/n;
.source "SourceFile"


# static fields
.field public static final g:Ly3/l;

.field public static final h:Ly3/l;

.field public static final i:Ly3/l;

.field public static final j:Ly3/l;


# instance fields
.field public final e:Ly3/m;

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly3/l;

    sget-object v1, Ly3/m;->FALSE:Ly3/m;

    invoke-direct {v0, v1}, Ly3/l;-><init>(Ly3/m;)V

    sput-object v0, Ly3/l;->g:Ly3/l;

    new-instance v0, Ly3/l;

    sget-object v1, Ly3/m;->TRUE:Ly3/m;

    invoke-direct {v0, v1}, Ly3/l;-><init>(Ly3/m;)V

    sput-object v0, Ly3/l;->h:Ly3/l;

    new-instance v0, Ly3/l;

    sget-object v1, Ly3/m;->NULL:Ly3/m;

    invoke-direct {v0, v1}, Ly3/l;-><init>(Ly3/m;)V

    sput-object v0, Ly3/l;->i:Ly3/l;

    new-instance v0, Ly3/l;

    sget-object v1, Ly3/m;->UNDEFINED:Ly3/m;

    invoke-direct {v0, v1}, Ly3/l;-><init>(Ly3/m;)V

    sput-object v0, Ly3/l;->j:Ly3/l;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    sget-object v0, Ly3/o;->SIMPLE_VALUE:Ly3/o;

    goto :goto_0

    :cond_0
    sget-object v0, Ly3/o;->SIMPLE_VALUE_NEXT_BYTE:Ly3/o;

    :goto_0
    invoke-direct {p0, v0}, Ly3/n;-><init>(Ly3/o;)V

    iput p1, p0, Ly3/l;->f:I

    and-int/lit8 p1, p1, 0x1f

    packed-switch p1, :pswitch_data_0

    sget-object p1, Ly3/m;->UNALLOCATED:Ly3/m;

    goto :goto_1

    :pswitch_0
    sget-object p1, Ly3/m;->RESERVED:Ly3/m;

    goto :goto_1

    :pswitch_1
    sget-object p1, Ly3/m;->UNDEFINED:Ly3/m;

    goto :goto_1

    :pswitch_2
    sget-object p1, Ly3/m;->NULL:Ly3/m;

    goto :goto_1

    :pswitch_3
    sget-object p1, Ly3/m;->TRUE:Ly3/m;

    goto :goto_1

    :pswitch_4
    sget-object p1, Ly3/m;->FALSE:Ly3/m;

    :goto_1
    iput-object p1, p0, Ly3/l;->e:Ly3/m;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ly3/m;)V
    .locals 1

    sget-object v0, Ly3/o;->SIMPLE_VALUE:Ly3/o;

    invoke-direct {p0, v0}, Ly3/n;-><init>(Ly3/o;)V

    invoke-virtual {p1}, Ly3/m;->a()I

    move-result v0

    iput v0, p0, Ly3/l;->f:I

    iput-object p1, p0, Ly3/l;->e:Ly3/m;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ly3/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ly3/l;

    invoke-super {p0, p1}, Ly3/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Ly3/l;->f:I

    iget p1, v0, Ly3/l;->f:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ly3/n;->hashCode()I

    move-result v0

    iget p0, p0, Ly3/l;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly3/l;->e:Ly3/m;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lf0/n;
.super Lf0/m;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf0/n;->d:I

    invoke-direct {p0}, Lf0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lf0/n;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lf0/m;->c:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lf0/m;->c:I

    iget-object p0, p0, Lf0/m;->a:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :pswitch_0
    iget v0, p0, Lf0/m;->c:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lf0/m;->c:I

    iget-object p0, p0, Lf0/m;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :pswitch_1
    iget v0, p0, Lf0/m;->c:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lf0/m;->c:I

    new-instance v1, Lf0/a;

    iget-object p0, p0, Lf0/m;->a:[Ljava/lang/Object;

    aget-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    invoke-direct {v1, v2, p0}, Lf0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

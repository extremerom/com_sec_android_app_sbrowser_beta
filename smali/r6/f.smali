.class public final Lr6/f;
.super Lr6/g;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lr6/j;


# direct methods
.method public synthetic constructor <init>(Lr6/j;I)V
    .locals 0

    iput p2, p0, Lr6/f;->e:I

    iput-object p1, p0, Lr6/f;->f:Lr6/j;

    invoke-direct {p0, p1}, Lr6/g;-><init>(Lr6/j;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lr6/f;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr6/f;->f:Lr6/j;

    iget p0, p0, Lr6/h;->h:F

    return p0

    :pswitch_0
    iget-object p0, p0, Lr6/f;->f:Lr6/j;

    iget v0, p0, Lr6/h;->h:F

    iget p0, p0, Lr6/h;->j:F

    add-float/2addr v0, p0

    return v0

    :pswitch_1
    iget-object p0, p0, Lr6/f;->f:Lr6/j;

    iget v0, p0, Lr6/h;->h:F

    iget p0, p0, Lr6/h;->i:F

    add-float/2addr v0, p0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

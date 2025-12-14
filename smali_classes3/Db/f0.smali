.class public final LDb/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/h0;


# direct methods
.method public synthetic constructor <init>(LDb/h0;I)V
    .locals 0

    iput p2, p0, LDb/f0;->a:I

    iput-object p1, p0, LDb/f0;->b:LDb/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LDb/f0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LDb/f0;->b:LDb/h0;

    invoke-virtual {p0}, LDb/r0;->k()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, LDb/g0;

    iget-object p0, p0, LDb/f0;->b:LDb/h0;

    invoke-direct {v0, p0}, LDb/g0;-><init>(LDb/h0;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

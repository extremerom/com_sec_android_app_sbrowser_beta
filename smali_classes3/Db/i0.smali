.class public final LDb/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/k0;


# direct methods
.method public synthetic constructor <init>(LDb/k0;I)V
    .locals 0

    iput p2, p0, LDb/i0;->a:I

    iput-object p1, p0, LDb/i0;->b:LDb/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LDb/i0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LDb/i0;->b:LDb/k0;

    invoke-virtual {p0}, LDb/r0;->k()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, LDb/j0;

    iget-object p0, p0, LDb/i0;->b:LDb/k0;

    invoke-direct {v0, p0}, LDb/j0;-><init>(LDb/k0;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

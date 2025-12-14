.class public final LDb/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/v0;


# direct methods
.method public synthetic constructor <init>(LDb/v0;I)V
    .locals 0

    iput p2, p0, LDb/s0;->a:I

    iput-object p1, p0, LDb/s0;->b:LDb/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LDb/s0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LDb/s0;->b:LDb/v0;

    iget-object p0, p0, LDb/v0;->b:LDb/B0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, LPb/c;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LDb/s0;->b:LDb/v0;

    iget-object v0, p0, LDb/v0;->a:Lyc/w;

    invoke-virtual {p0, v0}, LDb/v0;->a(Lyc/w;)LAb/d;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

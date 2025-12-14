.class public final LDb/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LMb/w;


# direct methods
.method public synthetic constructor <init>(LMb/w;I)V
    .locals 0

    iput p2, p0, LDb/q;->a:I

    iput-object p1, p0, LDb/q;->b:LMb/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LDb/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LDb/q;->b:LMb/w;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LDb/q;->b:LMb/w;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

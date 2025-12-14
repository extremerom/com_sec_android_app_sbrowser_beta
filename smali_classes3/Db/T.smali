.class public final LDb/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/Y;


# direct methods
.method public synthetic constructor <init>(LDb/Y;I)V
    .locals 0

    iput p2, p0, LDb/T;->a:I

    iput-object p1, p0, LDb/T;->b:LDb/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LDb/T;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LDb/T;->b:LDb/Y;

    iget-object p0, p0, LDb/Y;->b:Ljava/lang/Class;

    invoke-static {p0}, Lqd/l;->a(Ljava/lang/Class;)LOb/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, LDb/W;

    iget-object p0, p0, LDb/T;->b:LDb/Y;

    invoke-direct {v0, p0}, LDb/W;-><init>(LDb/Y;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

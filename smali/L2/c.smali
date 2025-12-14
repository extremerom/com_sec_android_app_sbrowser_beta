.class public final synthetic LL2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LA7/h;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LA7/h;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, LL2/c;->a:I

    iput-object p1, p0, LL2/c;->b:LA7/h;

    iput-object p2, p0, LL2/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LL2/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL2/c;->b:LA7/h;

    iget-object p0, p0, LL2/c;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, LA7/h;->a(Ljava/lang/String;)LS2/a;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LL2/c;->b:LA7/h;

    iget-object p0, p0, LL2/c;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, LA7/h;->a(Ljava/lang/String;)LS2/a;

    move-result-object p0

    const-string v0, "PRAGMA query_only = 1"

    invoke-static {v0, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

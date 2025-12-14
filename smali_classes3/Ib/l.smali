.class public final LIb/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LIb/q;


# direct methods
.method public synthetic constructor <init>(LIb/q;I)V
    .locals 0

    iput p2, p0, LIb/l;->a:I

    iput-object p1, p0, LIb/l;->b:LIb/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LIb/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LIb/l;->b:LIb/q;

    iget-object p0, p0, LIb/q;->a:LMb/B;

    iget-object p0, p0, LMb/B;->e:LGb/i;

    invoke-virtual {p0}, LGb/i;->e()Lyc/A;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LIb/l;->b:LIb/q;

    iget-object p0, p0, LIb/q;->a:LMb/B;

    const-string v0, ""

    const-string v1, "WARNING"

    iget-object p0, p0, LMb/B;->e:LGb/i;

    const-string v2, "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version"

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v1, v3}, LKb/e;->a(LGb/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)LKb/j;

    move-result-object p0

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LKb/g;->a:LKb/f;

    goto :goto_0

    :cond_0
    new-instance v0, LKb/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LKb/i;-><init>(ILjava/util/List;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

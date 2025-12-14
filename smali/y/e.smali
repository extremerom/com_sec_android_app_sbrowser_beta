.class public final synthetic Ly/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LK0/m;


# direct methods
.method public synthetic constructor <init>(LK0/m;I)V
    .locals 0

    iput p2, p0, Ly/e;->a:I

    iput-object p1, p0, Ly/e;->b:LK0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ly/e;->a:I

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ly/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Ly/e;->b:LK0/m;

    invoke-static {p1, p0, v0}, LG6/a;->j(Landroid/app/appsearch/AppSearchResult;LK0/m;Ljava/util/function/Function;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Ly/e;->b:LK0/m;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p1, p0, v0}, LG6/a;->j(Landroid/app/appsearch/AppSearchResult;LK0/m;Ljava/util/function/Function;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Ly/e;->b:LK0/m;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p1, p0, v0}, LG6/a;->j(Landroid/app/appsearch/AppSearchResult;LK0/m;Ljava/util/function/Function;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final LW3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/u;
.implements LW3/h;
.implements Ll4/g;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LW3/e;->a:I

    iput-object p1, p0, LW3/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0

    const-class p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public b(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LW3/e;->b:Landroid/content/Context;

    invoke-static {p0, p0, p1, p2}, LG5/q;->e(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LW3/e;->b:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public y(LW3/z;)LW3/t;
    .locals 3

    iget v0, p0, LW3/e;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, LW3/p;

    iget-object p0, p0, LW3/e;->b:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, LW3/p;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_0
    new-instance v0, LW3/b;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, LW3/z;->a(Ljava/lang/Class;Ljava/lang/Class;)LW3/t;

    move-result-object p1

    iget-object p0, p0, LW3/e;->b:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, LW3/b;-><init>(Landroid/content/Context;LW3/t;)V

    return-object v0

    :pswitch_1
    new-instance p1, LW3/b;

    iget-object v0, p0, LW3/e;->b:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, LW3/b;-><init>(Landroid/content/Context;LW3/h;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

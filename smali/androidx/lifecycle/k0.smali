.class public final Landroidx/lifecycle/k0;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:Landroidx/lifecycle/k0;

.field public static final c:Landroidx/lifecycle/k0;

.field public static final d:Landroidx/lifecycle/k0;

.field public static final e:Landroidx/lifecycle/k0;

.field public static final f:Landroidx/lifecycle/k0;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/k0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/k0;-><init>(II)V

    sput-object v0, Landroidx/lifecycle/k0;->b:Landroidx/lifecycle/k0;

    new-instance v0, Landroidx/lifecycle/k0;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/k0;-><init>(II)V

    sput-object v0, Landroidx/lifecycle/k0;->c:Landroidx/lifecycle/k0;

    new-instance v0, Landroidx/lifecycle/k0;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/k0;-><init>(II)V

    sput-object v0, Landroidx/lifecycle/k0;->d:Landroidx/lifecycle/k0;

    new-instance v0, Landroidx/lifecycle/k0;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/k0;-><init>(II)V

    sput-object v0, Landroidx/lifecycle/k0;->e:Landroidx/lifecycle/k0;

    new-instance v0, Landroidx/lifecycle/k0;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/k0;-><init>(II)V

    sput-object v0, Landroidx/lifecycle/k0;->f:Landroidx/lifecycle/k0;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/lifecycle/k0;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/lifecycle/k0;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    const-string p0, "view"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0b0e20

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroidx/lifecycle/y0;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/lifecycle/y0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    const-string p0, "view"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    const-string p0, "viewParent"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0b0e1d

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroidx/lifecycle/J;

    if-eqz p1, :cond_2

    check-cast p0, Landroidx/lifecycle/J;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    const-string p0, "currentView"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/view/View;

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return-object p0

    :pswitch_3
    check-cast p1, Li2/b;

    const-string p0, "$this$initializer"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/lifecycle/n0;

    invoke-direct {p0}, Landroidx/lifecycle/n0;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

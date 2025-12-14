.class public final Landroidx/core/widget/o;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:Landroidx/core/widget/o;

.field public static final c:Landroidx/core/widget/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/core/widget/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/widget/o;-><init>(II)V

    sput-object v0, Landroidx/core/widget/o;->b:Landroidx/core/widget/o;

    new-instance v0, Landroidx/core/widget/o;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/core/widget/o;-><init>(II)V

    sput-object v0, Landroidx/core/widget/o;->c:Landroidx/core/widget/o;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/core/widget/o;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/core/widget/o;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/os/Parcel;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/core/widget/p;

    invoke-direct {p0, p1}, Landroidx/core/widget/p;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/os/Parcel;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/core/widget/n;

    invoke-direct {p0, p1}, Landroidx/core/widget/n;-><init>(Landroid/os/Parcel;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

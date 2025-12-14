.class public final Lf1/X;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:Lf1/X;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf1/X;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, Lf1/X;->a:Lf1/X;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    instance-of p0, p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    new-instance v0, Lbd/e;

    const/4 p0, 0x1

    invoke-direct {v0, p0, p1}, Lbd/e;-><init>(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.class public final LW3/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/u;
.implements Le4/a;


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, LW3/A;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LS3/C;LQ3/k;)LS3/C;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, LZ3/d;

    iget-object p0, p0, LW3/A;->a:Landroid/content/res/Resources;

    invoke-direct {p2, p0, p1}, LZ3/d;-><init>(Landroid/content/res/Resources;LS3/C;)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public y(LW3/z;)LW3/t;
    .locals 1

    new-instance p1, LW3/b;

    sget-object v0, LW3/D;->b:LW3/D;

    iget-object p0, p0, LW3/A;->a:Landroid/content/res/Resources;

    invoke-direct {p1, p0, v0}, LW3/b;-><init>(Landroid/content/res/Resources;LW3/t;)V

    return-object p1
.end method

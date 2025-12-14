.class public final LU1/b;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:LR1/p;

.field public final synthetic b:Lz0/g;

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(LR1/p;Lz0/g;Ljava/lang/Integer;Z)V
    .locals 0

    iput-object p1, p0, LU1/b;->a:LR1/p;

    iput-object p2, p0, LU1/b;->b:Lz0/g;

    iput-object p3, p0, LU1/b;->c:Ljava/lang/Integer;

    iput-boolean p4, p0, LU1/b;->d:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object p1, p0, LU1/b;->a:LR1/p;

    iget-object v3, p1, LR1/p;->c:Ljava/lang/String;

    iget-object v5, p0, LU1/b;->c:Ljava/lang/Integer;

    iget-boolean v6, p0, LU1/b;->d:Z

    iget-object v4, p0, LU1/b;->b:Lz0/g;

    move-object v1, v0

    invoke-static/range {v1 .. v6}, LG5/B2;->b(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lz0/g;Ljava/lang/Integer;Z)V

    return-object v0
.end method
